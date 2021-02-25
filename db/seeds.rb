require "faker"
require "json"

puts " Creating Users"
User.create!({"email"=>"nicolas.genest@codeboxx.biz", "password"=> "012345"})
User.create!({"email"=>"nadya.fortier@codeboxx.biz", "password"=> "012345"})
User.create!({"email"=>"martin.chantal@codeboxx.biz", "password"=> "012345"})
User.create!({"email"=>"mathieu.houde@codeboxx.biz", "password"=> "012345"})
User.create!({"email"=>"david.boutin@codeboxx.biz", "password"=> "012345" })
User.create!({"email"=>"mathieu.lortie@codeboxx.biz", "password"=> "012345" })
User.create!({"email"=>"thomas.carrier@codeboxx.biz", "password"=> "012345" })
93.times do
   User.create!(
      email: Faker::Internet.email,
      password: Faker::Internet.password(min_length: 6)
   )
end

puts "Creating Employees"
Employee.create!({"last_name"=> "Genest","first_name"=> "Nicolas",  "title"=> "CEO", "user_id"=>1})
Employee.create!({"last_name"=> "Fortier", "first_name"=> "Nadya", "title"=> "Director","user_id"=>2})
Employee.create!({"last_name"=> "Chantal","first_name"=> "Martin",  "title"=> "Director Assistant","user_id"=>3})
Employee.create!({"last_name"=> "Houde","first_name"=> "Mathieu",  "title"=> "Captain", "user_id"=>4})
Employee.create!({"last_name"=> "Boutin","first_name"=> "David",  "title"=> "Engineer", "user_id"=>5})
Employee.create!({"last_name"=> "Lortie", "first_name"=> "Mathieu", "title"=> "Engineer" ,"user_id"=>6})
Employee.create!({"last_name"=> "Carrier","first_name"=> "Thomas",  "title"=> "Engineer","user_id"=>7})

puts "Creating Lead"
# Lead.create!({"full_name_lead"=> "John Smith", "email_lead"=> "john@smith.com", "phone_lead"=> "5556666", "company_name_leads"=> "John Co", "project_name_leads"=> "JohnsProject", "project_description_leads"=> "The description", "department"=> "Construction", "message_leads"=> "Msg goes here"})

20.times do
   dateCreationUpdate = Faker::Date.between(from: '2018-09-01', to: '2021-02-20')
   Lead.create!(
      full_name_lead: Faker::Name.name,
      email_lead: Faker::Internet.email,
      phone_lead: Faker::PhoneNumber.cell_phone,
      company_name_leads: Faker::Company.name,
      project_name_leads: Faker::Name.name,
      project_description_leads: Faker::Company.buzzword,
      department: Faker::Company.industry,
      message_leads: Faker::Lorem.sentence(word_count: 8, supplemental: true, random_words_to_add: 8)

   )
end

puts "Creating Address"

require 'csv'  
csv_text = File.read(Rails.root.join('lib', 'seeds', 'Address.csv')) 
csv = CSV.parse(csv_text, col_sep: ",", :headers => true) 
csv.each do |row|          
   row = row.to_hash     
   p row
   t = Address.new     
   t.address_type = row['address_type']     
   t.address_status = row['address_status']     
   t.address_entity = row['address_entity']     
   t.address_street = row['address_street']     
   t.address_suite_or_apt = row['address_suite_or_apt']     
   t.address_city = row['address_city']     
   t.address_zip_code = row['address_zip_code']     
   t.address_country = row['address_country']     
   t.address_notes = row['address_notes']          
   t.save!  
end

puts "Creating Customer"
# Customer.create!({"user_id"=> 8, "customer_company_name"=> "John Co", "address_id"=> 1, "customer_full_name_of_company_contact"=> "Tim", "customer_company_phone"=> "5556666", "customer_company_email"=> "bob@gmail.com", "customer_company_description"=> "Local Business", "customer_full_name_of_service_technical_authority"=> "Bob", "customer_technical_authority_phone"=> "5556666", "customer_technical_manager_email"=> "bobert@bobmail.com"})

93.times do
   dateCreationUpdate = Faker::Date.between(from: '2018-09-01', to: '2021-02-20')
   Customer.create!(
      user_id:Faker::Number.between(from: 8, to: 100),
      customer_company_name: Faker::Company.name,
      address_id:Faker::Number.between(from: 1, to: 100),
      customer_full_name_of_company_contact: Faker::Name.name,
      customer_company_phone: Faker::PhoneNumber.cell_phone,
      customer_company_email: Faker::Internet.email,
      customer_company_description: Faker::Company.catch_phrase,
      customer_full_name_of_service_technical_authority: Faker::Name.name,
      customer_technical_authority_phone: Faker::PhoneNumber.cell_phone,
      customer_technical_manager_email: Faker::Internet.email

   )
end

puts "Creating Building"
# Building.create!({"customer_id"=> 1, "address_id"=> 1, "building_admin_full_name"=> "Bart Simpson", "building_admin_phone_number"=> "5556666", "building_admin_email"=> "bart@simpson.com", "building_technical_contact_full_name"=> "Homer Simpson", "building_technical_contact_phone"=> "5556666", "building_technical_contact_email"=> "homer@simpson.com"})

93.times do
   dateCreationUpdate = Faker::Date.between(from: '2018-09-01', to: '2021-02-20')
   Building.create!(
      customer_id: Faker::Number.between(from: 1, to: 93),
      address_id:Faker::Number.between(from: 101, to: 200),
      building_admin_full_name:Faker::Name.name,
      building_admin_phone_number:Faker::PhoneNumber.cell_phone,
      building_admin_email:Faker::Internet.email,
      building_technical_contact_full_name:Faker::Name.name,
      building_technical_contact_phone:Faker::PhoneNumber.cell_phone,
      building_technical_contact_email: Faker::Internet.email
   )
end

puts "Creating Building Details"

93.times do
   dateCreationUpdate = Faker::Date.between(from: '2018-09-01', to: '2021-02-20')
   BuildingDetail.create!(
      building_id: Faker::Number.between(from: 1, to: 93),
      information_key: "date of construction",
      value: Faker::Date.between(from: '1989-01-01', to: '2020-01-01')
   )
end

puts "Creating Battery"
# Battery.create!({"building_id"=> 1, "battery_building_type"=> "Residential", "employee_id"=> 6, "battery_date_of_commission"=> 2021_02_23_022544, "battery_date_of_last_inspection"=> 2021_02_23_063456, "battery_certificate_of_operations"=> "JF2kja45", "battery_information"=> "Operational", "battery_notes"=> "All the things"})

50.times do
   dateCreationUpdate = Faker::Date.between(from: '2018-09-01', to: '2021-02-20')
   Battery.create!(
      building_id: Faker::Number.between(from: 1, to: 93),
      battery_building_type:["Residential", "Commercial", "Corporate","Hybrid"].sample,
      employee_id: Faker::Number.between(from: 1, to: 7),
      battery_date_of_commission:Faker::Date.between(from:'2018-01-13', to:'2021-01-15'),
      battery_date_of_last_inspection:Faker::Date.between(from:'2020-01-13', to:'2021-01-15'),
      battery_certificate_of_operations: Faker::Crypto.md5,
      battery_information: "Add information here",
      battery_notes: "Add information here"
   )
end

puts "Creating Column"
# Column.create!({"battery_id"=> 1, "building_type"=> "Really big", "floors_served"=> 20, "status"=> "Online", "information"=> "All the info here", "notes"=> "All the notes here"})

100.times do
   dateCreationUpdate = Faker::Date.between(from: '2018-09-01', to: '2021-02-20')
   Column.create!(
      battery_id: Faker::Number.between(from: 1, to: 50),
      building_type:["Residential", "Commercial", "Corporate","Hybrid"].sample,
      floors_served: Faker::Number.between(from: 2, to: 100),
      status: "",
      information: "Add information here",
      notes: "Add information here"

   )
end

puts "Creating Elevator"
# Elevator.create!({"column_id"=> 1, "elevator_serial_number"=> "12345", "elevator_type"=> "Small", "elevator_status"=> "online", "elevator_date_of_commissioning"=> 2021_02_22_223730, "elevator_date_of_last_inspection"=> "2021_02_22_223444", "elevator_certificate_of_inspection"=> "2021_02_22_223999", "elevator_information"=> "All the info here", "elevator_notes"=> "All the notes here" })

200.times do
   dateCreationUpdate = Faker::Date.between(from: '2018-09-01', to: '2021-02-20')
   Elevator.create!(
      column_id: Faker::Number.between(from: 1, to: 100),
      elevator_serial_number: Faker::Device.serial,
      elevator_model: ["Standard", "Premium" , "Excelium"].sample,
      elevator_type: ["Residential", "Commercial", "Corporate", "Hybrid"].sample,
      elevator_status: "",
      elevator_date_of_commissioning: Faker::Date.between(from: '2018-01-01', to: '2020-01-01'),
      elevator_date_of_last_inspection:Faker::Date.between(from: '2020-01-01', to: '2021-01-01'),
      elevator_certificate_of_inspection: Faker::Crypto.md5,
      elevator_information: "Add information here",
      elevator_notes: "Add information here"

   )
end