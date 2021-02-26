## <img src="https://raw.githubusercontent.com/tatiana-wag/Rocket_Elevators_Information_System/master/public/RocketElevators.jpg">
# 🏆 Project Description
<p>
  <img src="https://raw.githubusercontent.com/tatiana-wag/Rocket_Elevators_Information_System/master/public/RocketIcon.png" width="280px" align="right">
</p>

---


This exercise is for the Week 5 of the "Odyssey" program offered by CodeBoxx. The main goal of the week is to transform the static site previously developed during the Genesis program and turn it into a web application on MVC (Model - View - Controller) foundations. This is the first introduction to Ruby on Rails framework. The site must be in a state that allows you to create a new section that saves the Javascript form that calculates an estimate in the form of a purchase order. This purchase order includes the key elements of the estimation form and allows you to enter more details.

# 💾 A database that allows the storage of the submission form 
The team must deploy a MySQL database within their common development environment.
A table "Quotes" that allows you to save the forms filled out on the site and eventually turn them into prospects. This table must persist all required fields.
A "Users" table that allows users to authenticate. This table is responsible for keeping authentication data such as email, encrypted password, token, etc.
An "Employees" table that allows you to reserve a section of the site only to authenticated users. When a user authenticates, he is attached to an "Employee" profile and has access to information specific to him. 

#The table will collect the following fields at first to designate an employee:
<p>
 User ID -
 Last Name -
 First name -
 Title or Function
</p>
<p>
  The following officers were added as principal staff of the organization with login privileges:
</p>
<table>
  <tr>
    <th>first_name</th>
    <th>last_name</th>
    <th>title</th>
    <th>email</th>
  </tr>
  <tr>
    <td>Nicolas</td>
    <td>Genest</td>
    <td>CEO</td>
    <td>nicolas.genest@codeboxx.biz</td>
  </tr>
  <tr>
    <td>Nadya</td>
    <td>Fortier</td>
    <td>Director</td>
    <td>nadya.fortier@codeboxx.biz</td>
  </tr>
  <tr>
    <td>Martin</td>
    <td>Chantal</td>
    <td>Director Assistant</td>
    <td>martin.chantal@codeboxx.biz</td>
  </tr>
  <tr>
    <td>Mathieu</td>
    <td>Houde</td>
    <td>Captain</td>
    <td>mathieu.houde@codeboxx.biz</td>
  </tr>
  <tr>
    <td>David</td>
    <td>Boutin</td>
    <td>Engineer</td>
    <td>david.boutin@codeboxx.biz</td>
  </tr>
  <tr>
    <td>Mathieu</td>
    <td>Lortie</td>
    <td>Engineer</td>
    <td>mathieu.lortie@codeboxx.biz</td>
  </tr>
  <tr>
    <td>Thomas</td>
    <td>Carrier</td>
    <td>Engineer</td>
    <td>thomas.carrier@codeboxx.biz</td>
  </tr>
</table>

The default password is ❌ 012345 ❌

An example is shown below

```
{
Username: mathieu.houde@codeboxx.biz
password: 012345
}
```

Adding an Administrative Section to the Site (Backoffice)
The backoffice of the site is secured behind an authentication page that is validated using the Users table.
The List of Quotes contained in the table must be accessible in a section of the BackOffice.

# 💻 Starting the Program 

Ruby version - 2.6.6

Rails version - Rails version 5.2.4.2

Dependencies  - HTML 5, CSS 3, Javascript, Bootstrap, MySqL, Postgres, Ruby on rails, Ubuntu

Database initialization - ```rake db:seed```



# 👥 Contributors
https://github.com/WillJacct - Will Johnson

https://github.com/tatiana-wag - Tatiana Ramirez

https://github.com/Adetula - Muyiwa Adetula

https://github.com/TJWever - Timothy Wever

https://github.com/dondong1 - Don Nguyen

