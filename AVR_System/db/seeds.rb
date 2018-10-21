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
