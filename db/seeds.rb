# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts " Creating Users"
User.create!({"email"=>"nicolas.genest@codeboxx.biz", "password"=> "012345"})
User.create!({"email"=>"nadya.fortier@codeboxx.biz", "password"=> "012345"})
User.create!({"email"=>"martin.chantal@codeboxx.biz", "password"=> "012345"})
User.create!({"email"=>"mathieu.houde@codeboxx.biz", "password"=> "012345"})
User.create!({"email"=>"david.boutin@codeboxx.biz", "password"=> "012345" })
User.create!({"email"=>"mathieu.lortie@codeboxx.biz", "password"=> "012345" })
User.create!({"email"=>"thomas.carrier@codeboxx.biz", "password"=> "012345" })
User.create!({"email"=>"homer.genest@codeboxx.biz", "password"=> "012345"})

puts "Creating Employees"
Employee.create!({"last_name"=> "Genest","first_name"=> "Nicolas",  "title"=> "CEO", "user_id"=>1})
Employee.create!({"last_name"=> "Fortier", "first_name"=> "Nadya", "title"=> "Director","user_id"=>2})
Employee.create!({"last_name"=> "Chantal","first_name"=> "Martin",  "title"=> "Director Assistant","user_id"=>3})
Employee.create!({"last_name"=> "Houde","first_name"=> "Mathieu",  "title"=> "Captain", "user_id"=>4})
Employee.create!({"last_name"=> "Boutin","first_name"=> "David",  "title"=> "Engineer", "user_id"=>5})
Employee.create!({"last_name"=> "Lortie", "first_name"=> "Mathieu", "title"=> "Engineer" ,"user_id"=>6})
Employee.create!({"last_name"=> "Carrier","first_name"=> "Thomas",  "title"=> "Engineer","user_id"=>7})

puts "Creating Lead"
Lead.create!({"full_name_lead"=> "John Smith", "email_lead"=> "john@smith.com", "phone_lead"=> "5556666", "company_name_leads"=> "John Co", "project_name_leads"=> "JohnsProject", "project_description_leads"=> "The description", "department"=> "Construction", "message_leads"=> "Msg goes here", "attachment_file_leads"=> ""})

puts "Creating Address"
Address.create!({"address_type"=> "Example", "address_status"=> "Active", "address_entity"=> "Customer", "address_street"=> "Washington", "address_suite_or_apt"=> "12", "address_city"=> "New York", "address_zip_code"=> "12345", "address_country"=> "Canada", "address_notes"=> "My Text"})

puts "Creating Customer"
Customer.create!({"user_id"=> 8, "customer_company_name"=> "John Co", "address_id"=> 1, "customer_full_name_of_company_contact"=> "Tim", "customer_company_phone"=> "5556666", "customer_company_email"=> "bob@gmail.com", "customer_company_description"=> "Local Business", "customer_full_name_of_service_technical_authority"=> "Bob", "customer_technical_authority_phone"=> "5556666", "customer_technical_manager_email"=> "bobert@bobmail.com"})

puts "Creating Building"
Building.create!({"customer_id"=> 1, "address_id"=> 1, "building_admin_full_name"=> "Bart Simpson", "building_admin_phone_number"=> "5556666", "building_admin_email"=> "bart@simpson.com", "building_technical_contact_full_name"=> "Homer Simpson", "building_technical_contact_phone"=> "5556666", "building_technical_contact_email"=> "homer@simpson.com"})

puts "Creating Battery"
Battery.create!({"building_id"=> 1, "battery_building_type"=> "Residential", "employee_id"=> 6, "battery_date_of_commission"=> 2021_02_23_022544, "battery_date_of_last_inspection"=> 2021_02_23_063456, "battery_certificate_of_operations"=> "JF2kja45", "battery_information"=> "Operational", "battery_notes"=> "All the things"})

puts "Creating Column"
Column.create!({"battery_id"=> 1, "building_type"=> "Really big", "floors_served"=> 20, "status"=> "Online", "information"=> "All the info here", "notes"=> "All the notes here"})

puts "Creating Elevator"
Elevator.create!({"column_id"=> 1, "elevator_serial_number"=> "12345", "elevator_type"=> "Small", "elevator_status"=> "online", "elevator_date_of_commissioning"=> 2021_02_22_223730, "elevator_date_of_last_inspection"=> "2021_02_22_223444", "elevator_certificate_of_inspection"=> "2021_02_22_223999", "elevator_information"=> "All the info here", "elevator_notes"=> "All the notes here" })

