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

puts "Creating Employees"
Employee.create!({"last_name"=> "Genest","first_name"=> "Nicolas",  "title"=> "CEO", "user_id"=>1})
Employee.create!({"last_name"=> "Fortier", "first_name"=> "Nadya", "title"=> "Director","user_id"=>2})
Employee.create!({"last_name"=> "Chantal","first_name"=> "Martin",  "title"=> "Director Assistant","user_id"=>3})
Employee.create!({"last_name"=> "Houde","first_name"=> "Mathieu",  "title"=> "Captain", "user_id"=>4})
Employee.create!({"last_name"=> "Boutin","first_name"=> "David",  "title"=> "Engineer", "user_id"=>5})
Employee.create!({"last_name"=> "Lortie", "first_name"=> "Mathieu", "title"=> "Engineer" ,"user_id"=>6})
Employee.create!({"last_name"=> "Carrier","first_name"=> "Thomas",  "title"=> "Engineer","user_id"=>7})

