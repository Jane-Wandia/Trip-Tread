# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting seeds"
User.destroy_all
Airline.destroy_all
Review.destroy_all
puts "Deletion Complete"

puts "Seeding...."

user1 = User.create(name: "Muriithi")
user2 = User.create(name: "Jane")
user3 = User.create(name: "Chelah")

airline1 = Airline.create(name: "Qatar")
airline2 = Airline.create(name: "Emirates Airlines")
airline3 = Airline.create(name: "Kenya Airways")

Review.create(trip: "Kenya to Dubai", review: "The flight was great, plane had nice tv screens, and the food was amazing.", rating: 9, airline_id: airline2.id, user_id: user1.id)
Review.create(trip: "Kenya to India", review: "The flight was ok: planes tv screens were quite small, but the food was decent.", rating: 6, airline_id: airline1.id, user_id: user2.id)
Review.create(trip: "Kenya to USA", review: "The flight was great: the flight was very long, but the attendants were very helpful, and there was a large selection of films to watch.", rating: 10, airline_id: airline3.id, user_id: user3.id)

puts "...Done seeding"