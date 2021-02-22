// TO HIDE BUILDING TYPES AND RESET VALUE 
function selectedType(typeValue) {
	document.getElementById("standard").checked = false;
	document.getElementById("premium").checked = false;
	document.getElementById("excelium").checked = false;
	document.getElementById("amount-elevatorsID").value= "";
	document.getElementById("unitePrice").value = "";
	document.getElementById("totalPrice").value = "";
	document.getElementById("installationFees").value = "";
	document.getElementById("finalPrice").value = "";
	if (typeValue === "residential") {
		modifiedStyle(["residential"], "block");
		modifiedStyle(["commercial", "corporate", "hybrid"], "none");
		modifiedValue(["commercial", "corporate", "hybrid"], "");
	} else if (typeValue === "commercial") {
		modifiedStyle(["commercial"], "block");
		modifiedStyle(["residential", "corporate", "hybrid"], "none");
		modifiedValue(["residential", "corporate", "hybrid"], "");
	} else if (typeValue === "corporate") {
		modifiedStyle(["corporate"], "block");
		modifiedStyle(["residential", "commercial", "hybrid"], "none");
		modifiedValue(["residential", "commercial", "hybrid"], "");
	} else if (typeValue === "hybrid") {
		modifiedStyle(["hybrid"], "block");
		modifiedStyle(["residential", "commercial", "corporate"], "none");
		modifiedValue(["residential", "commercial", "corporate"], "");
	} else if (typeValue === "chooseOne") {
		modifiedStyle(["residential", "commercial", "corporate","hybrid"], "none");
		modifiedValue(["residential", "commercial", "corporate","hybrid"], "");
	}
}

function modifiedStyle(arrayDivsID, style) {
	arrayDivsID.forEach(function (divID) {
		var divElement = document.getElementById(divID + "-div");
		var children = divElement.children;
		var childrenArray = Array.from(children);
		childrenArray.forEach(function (child) {
			child.style.display = style;
		});
	});
}

function modifiedValue(arrayDivsID, value) {
	arrayDivsID.forEach(function (divID) {
		var divElement = document.getElementById(divID+ "-div");
		var children = divElement.children;
		var childrenArray = Array.from(children);
		childrenArray.forEach(function (child) {
			Array.from(child.children).forEach(function(childVar){
				childVar.value = "";
			});
		});
	});
}


// RESIDENTIAL AMOUNT NUMBER OF ELEVATORS
function amountElevators() {
	var numApp = document.getElementById("numApp").value || 0;
	var numFloor = document.getElementById("numFloors_re").value || 0;
	var numBasements = document.getElementById("numBasements_re").value || 0;
	var numStories = numFloor - numBasements;
	if (numStories <= 0) {
		numStories = 1;
	}
	var elevatorsPerColumns = Math.ceil((numApp / numStories) / 6);
	var columnsQuantity = Math.ceil((numStories + 1) / 20);
	document.getElementById("amount-elevatorsID").value = Math.ceil(elevatorsPerColumns * (columnsQuantity));
	refresh ();
}	

// COMMERCIAL AMOUNT NUMBER OF ELEVATORS
function amountElevatorsCom (){
	var amount = document.getElementById("numShafts").value || 0;
	document.getElementById("amount-elevatorsID").value= amount;
	refresh ();
}

// CORPORATE AMOUNT NUMBER OF ELEVATORS
function amountElevatorsCo() {
	var numFloor = parseInt(document.getElementById("numFloors_co").value) || 0;
	var numBasements = parseInt(document.getElementById("numBasements_co").value) || 0;
	var numOccupants = parseInt(document.getElementById("numMaxOccupants_co").value) || 0;
	var numStories = numFloor + numBasements;
	var totalOccupants = numOccupants * numStories;
	var numElevatorsReq = totalOccupants / 1000;
	var numElevatorsCol = Math.ceil(numStories / 20);
	var numElevatorsPerCol = Math.ceil(numElevatorsReq / numElevatorsCol);
	document.getElementById("amount-elevatorsID").value = Math.ceil(numElevatorsPerCol * numElevatorsCol);
	refresh ();
}

// HYBRID AMOUNT NUMBER OF ELEVATORS
function amountElevatorsHy() {
	var numFloor = parseInt(document.getElementById("numFloors_hy").value) || 0;
	var numBasements = parseInt(document.getElementById("numBasements_hy").value) || 0;
	var numOccupants = parseInt(document.getElementById("numMaxOccupants_hy").value) || 0;
	var numStories = numFloor + numBasements;
	var totalOccupants = numOccupants * numStories;
	var numElevatorsReq = totalOccupants / 1000;
	var numElevatorsCol = Math.ceil(numStories / 20);
	var numElevatorsPerCol = Math.ceil(numElevatorsReq / numElevatorsCol);
	document.getElementById("amount-elevatorsID").value = Math.ceil(numElevatorsPerCol * numElevatorsCol);
	refresh ();
}


function refresh (){
	var standard = document.getElementById ("standard");
	var premium = document.getElementById ("premium");
	var excelium = document.getElementById ("excelium");
	var value;
	if (standard.checked){
		value = standard.value;
		unitPriceFun(value);
	}else if (premium.checked){
		value = premium.value;
		unitPriceFun(value);
	}else if (excelium.checked){
		value = excelium.value;
		unitPriceFun(value);
	} 
}


//GLOBAR VAR & UNIT PRICE
var standardUnitPrice = 7565;
var premiumUnitPrice = 12345;
var exceliumUnitPrice = 15400;
var unitPrice;
var totalPrice;
var installationFees;

function unitPriceFun(value) {
	if (value === "standardValue") {
		unitPrice = standardUnitPrice;
	} else if (value === "premiumValue") {
		unitPrice = premiumUnitPrice;
	} else if (value === "exceliumValue") {
		unitPrice = exceliumUnitPrice;
	}
	document.getElementById("unitePrice").value = new Intl.NumberFormat("en-US", { style: "currency", currency: "CAD" }).format(unitPrice);
	  totalPriceFun(value);
	  installationFeesFun(value);
	  finalPriceFun();
}

//TOTAL PRICE
function totalPriceFun(value) {
	var amountElevators = document.getElementById("amount-elevatorsID").value;
	if (value === "standardValue") {
		totalPrice = amountElevators * standardUnitPrice;
	} else if (value === "premiumValue") {
		totalPrice = amountElevators * premiumUnitPrice;
	} else if (value === "exceliumValue") {
		totalPrice = amountElevators * exceliumUnitPrice;
	}
	document.getElementById("totalPrice").value = new Intl.NumberFormat("en-US", { style: "currency", currency: "CAD" }).format(totalPrice);
}
//INSTALLATION FEES
function installationFeesFun(value) {
	var instStandard = 0.10;
	var instPremium = 0.13;
	var instExcelim = 0.16;
	if (value === "standardValue") {
		installationFees = totalPrice * instStandard;
	} else if (value === "premiumValue") {
		installationFees = totalPrice * instPremium;
	} else if (value === "exceliumValue") {
		installationFees = totalPrice * instExcelim;
	}
	document.getElementById("installationFees").value = new Intl.NumberFormat("en-US", { style: "currency", currency: "CAD" }).format(installationFees);
}
//TOTAL PRICE
function finalPriceFun() {
	document.getElementById("finalPrice").value = new Intl.NumberFormat("en-US", { style: "currency", currency: "CAD" }).format(totalPrice + installationFees);
} 
