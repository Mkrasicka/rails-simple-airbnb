require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
50.times do
  new_flat = Flat.create!(
    name: Faker::Address.state,
    address: Faker::Address.street_name,
    description: Faker::House.room,
    price_per_night: Faker::Number.number(digits: 10),
    number_of_guests: Faker::Number.number(digits: 10)
  )
  new_flat.save
end
