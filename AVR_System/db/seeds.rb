# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Waiter.find_or_create_by!(first_name: "Robert", last_name: "Dale", pin: "1111", manager: 1)
Waiter.find_or_create_by!(first_name: "Victor", last_name: "Lozoya", pin: "2222", manager: 0)
Waiter.find_or_create_by!(first_name: "Andrew", last_name: "Baca", pin: "3333", manager: 0)

Category.find_or_create_by!(name: "Chicken")
Category.find_or_create_by!(name: "Steak")
Category.find_or_create_by!(name: "Appetizer")
Category.find_or_create_by!(name: "Seafood")
Category.find_or_create_by!(name: "Sandwiches")
Category.find_or_create_by!(name: "Asian")
Category.find_or_create_by!(name: "BBQ")
Category.find_or_create_by!(name: "Pasta")
Category.find_or_create_by!(name: "Desserts")
Category.find_or_create_by!(name: "Burgers")
Category.find_or_create_by!(name: "Drinks")
Category.find_or_create_by!(name: "Beer")
Category.find_or_create_by!(name: "Alcohol")

Menuitem.find_or_create_by!(name: "")

(1..20).each do |i|
  Table.create!(table_number: i, waiter_id: i%2+1)
end

Menuitem.find_or_create_by!(name:"Sprite", category_id:"11")
Menuitem.find_or_create_by!(name:"Dr. Pepper", category_id:"11")
Menuitem.find_or_create_by!(name:"Coca Cola", category_id:"11")
Menuitem.find_or_create_by!(name:"Pepsi", category_id:"11")

Menuitem.find_or_create_by!(name:"Oreo Ice-Cream", category_id:"9")
Menuitem.find_or_create_by!(name:"Vanilla Ice-Cream", category_id:"9")
Menuitem.find_or_create_by!(name:"Chocolate Cake", category_id:"9")
Menuitem.find_or_create_by!(name:"Strawberry shortcake", category_id:"9")