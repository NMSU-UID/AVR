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

(1..20).each do |i|
  Table.create!(table_number: i, waiter_id: (i%3)+1)
end

Menuitem.find_or_create_by!(name:"Sprite", price: 2.49, category_id:"11")
Menuitem.find_or_create_by!(name:"Dr. Pepper", price: 2.49, category_id:"11")
Menuitem.find_or_create_by!(name:"Coca Cola", price: 2.49, category_id:"11")
Menuitem.find_or_create_by!(name:"Pepsi", price: 2.49, category_id:"11")

Menuitem.find_or_create_by!(name:"Oreo Ice-Cream", price: 3.99, category_id:"9")
Menuitem.find_or_create_by!(name:"Vanilla Ice-Cream", price: 3.99, category_id:"9")
Menuitem.find_or_create_by!(name:"Chocolate Cake", price: 4.49, category_id:"9")
Menuitem.find_or_create_by!(name:"Strawberry shortcake", price: 4.49, category_id:"9")

(1..5).each do |i|
  TablesItemsJoin.create!(table_id: i, menuitem_id: i)
end

(1..5).each do |i|
  TablesItemsJoin.create!(table_id: i, menuitem_id: (i%5)+ 1)
end
