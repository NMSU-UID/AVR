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
Menuitem.find_or_create_by!(name:"DrPepper", price: 2.49, category_id:"11")
Menuitem.find_or_create_by!(name:"Coke", price: 2.49, category_id:"11")
Menuitem.find_or_create_by!(name:"Pepsi", price: 2.49, category_id:"11")
Menuitem.find_or_create_by!(name:"Water", price: 2.00, category_id:"11")
Menuitem.find_or_create_by!(name:"Coffee", price: 3.00, category_id:"11")
Menuitem.find_or_create_by!(name:"Tea", price: 3.00, category_id:"11")
Menuitem.find_or_create_by!(name:"Gatorade", price: 2.49, category_id:"11")

Menuitem.find_or_create_by!(name:"Oreo_Ice_Cream", price: 3.99, category_id:"9")
Menuitem.find_or_create_by!(name:"Vanilla_Ice_Cream", price: 3.99, category_id:"9")
Menuitem.find_or_create_by!(name:"Chocolate_Cake", price: 4.49, category_id:"9")
Menuitem.find_or_create_by!(name:"Strawberry_Shortcake", price: 4.49, category_id:"9")

Menuitem.find_or_create_by!(name: "Teriaki_Chicken", price: 8.49, category_id: "6")
Menuitem.find_or_create_by!(name: "Kung_Pao_Chicken", price: 8.49, category_id: "6")

Menuitem.find_or_create_by!(name: "Ribeye", price: 19.49, category_id: "2")
Menuitem.find_or_create_by!(name: "Sirloin", price: 14.49, category_id: "2")
Menuitem.find_or_create_by!(name: "New_York_Strip", price: 20.49, category_id: "2")

Menuitem.find_or_create_by!(name: "Nachos", price: 8.49, category_id: "3")
Menuitem.find_or_create_by!(name: "Salad", price: 8.49, category_id: "3")

Menuitem.find_or_create_by!(name: "Shrimp", price: 12.49, category_id: "4")
Menuitem.find_or_create_by!(name: "Lobster", price: 15.49, category_id: "4")

Menuitem.find_or_create_by!(name: "Turkey_Sandwich", price: 8.49, category_id: "5")
Menuitem.find_or_create_by!(name: "Cold_Cut", price: 8.49, category_id: "5")
Menuitem.find_or_create_by!(name: "Club", price: 8.49, category_id: "5")
Menuitem.find_or_create_by!(name: "Chicken_Sandwich", price: 8.49, category_id: "5")

Menuitem.find_or_create_by!(name: "Ribs", price: 8.49, category_id: "7")
Menuitem.find_or_create_by!(name: "Brisket", price: 8.49, category_id: "7")

Menuitem.find_or_create_by!(name: "Rotisserie", price: 8.49, category_id: "1")
Menuitem.find_or_create_by!(name: "Chicken_Strips", price: 8.49, category_id: "1")

Menuitem.find_or_create_by!(name: "Spaghetti", price: 8.49, category_id: "8")
Menuitem.find_or_create_by!(name: "Alfredo", price: 8.49, category_id: "8")
Menuitem.find_or_create_by!(name: "Mac_And_Cheese", price: 8.49, category_id: "8")

Menuitem.find_or_create_by!(name: "Cheeseburger", price: 9.49, category_id: "10")
Menuitem.find_or_create_by!(name: "Western", price: 10.49, category_id: "10")
Menuitem.find_or_create_by!(name: "Big_Mac", price: 10.49, category_id: "10")

Menuitem.find_or_create_by!(name: "Coors", price: 8.49, category_id: "12")
Menuitem.find_or_create_by!(name: "Bud", price: 8.49, category_id: "12")

Menuitem.find_or_create_by!(name: "Hennessy", price: 8.49, category_id: "13")
Menuitem.find_or_create_by!(name: "Vodka", price: 8.49, category_id: "13")





(1..5).each do |i|
  TablesItemsJoin.create!(table_id: i, menuitem_id: i)
end

(1..5).each do |i|
  TablesItemsJoin.create!(table_id: i, menuitem_id: (i%5)+ 1)
end


Mod.find_or_create_by!(name: "Cheese", flavor: "American")
Mod.find_or_create_by!(name: "Cheese", flavor: "Cheddar")
Mod.find_or_create_by!(name: "Pickles", flavor: "Hamburger Slices")
Mod.find_or_create_by!(name: "Onions", flavor: "Red")
Mod.find_or_create_by!(name: "Chile Sauce", flavor: "Red")
Mod.find_or_create_by!(name: "Chile Sauce", flavor: "Green")





