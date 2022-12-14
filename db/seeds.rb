# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@dealership = Dealership.create!(name: "the amazing dealership", num_of_cars_on_lot: 3, full: false)
@car1 = @dealership.cars.create!(name: "Ford Focus", color: "blue", price: 5000, miles: 123, domestic: true)
@car2 = @dealership.cars.create!(name: "Ram 1500", color: "red", price: 6000, miles: 456, domestic: true)
@car3 = @dealership.cars.create!(name: "Toyota Corolla", color: "yellow", price: 7000, miles: 789, domestic: false)
