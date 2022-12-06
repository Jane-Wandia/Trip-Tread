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

user1 = User.create!(fullname: "Muriithi", email: "mk@gmail.com", password: "mkjr12", password_confirmation: "mkjr12")
user2 = User.create!(fullname: "Jane", email: "Wandia@gmail.com", password: "JaneWandia", password_confirmation: "JaneWandia")
user3 = User.create!(fullname: "Chelah", email: "Chelah@gmail.com", password: "12345", password_confirmation: "12345")

airline1 = Airline.create(name: "Qatar", image: "https://ibb.co/TtZpGhz")
airline2 = Airline.create(name: "Emirates Airlines", image: "https://ibb.co/1fKCP3D")
airline3 = Airline.create(name: "Kenya Airways", image: "https://ibb.co/7169y8b")
airline4 = Airline.create(name: "KLM", image: "https://ibb.co/gSvWzMz")
airline5 = Airline.create(name: "Ethopian Airlines", image: "https://ibb.co/BrB9hrw")
airline6 = Airline.create(name: "American Airlines", image: "https://ibb.co/DVnTC8c")

Review.create!(trip: "Kenya to Dubai", review: "The flight was great. Plane had nice tv screens, and the food was amazing.", rating: 9, airline_id: airline2.id, user_id: user1.id)
Review.create!(trip: "Nairobi to India", review: "The flight was ok: planes tv screens were quite small, but the food was decent.", rating: 6, airline_id: airline3.id, user_id: user2.id)
Review.create!(trip: "Nairobi to USA", review: "The flight was great. However, the flight was very long. The attendants were very helpful, and there was a large selection of films to watch.", rating: 10, airline_id: airline3.id, user_id: user1.id)
Review.create!(trip: "Ethiopia to Egypt", review: "Got a bunch of emails for upgrades, then couldn't finish my online check-in due to system errors. After the personal check-in was told to stand at the counter and wait for 15 minutes only to be asked why I am standing there, I can go and board the plane. And on top heavily damaged a brand new Samsonite luggage bag.", rating: 10, airline_id: airline5.id, user_id: user2.id)
Review.create!(trip: "Mumbai to South Africa", review: "Decided to fly Emirates on the return trip home. I must say I did not regret. The flight experience was amazing.", rating: 10, airline_id: airline2.id, user_id: user3.id)
Review.create!(trip: "Nairobi to Zanzibar", review: "Great flight. We took off even before time. No Complaints", rating: 10, airline_id: airline3.id, user_id: user3.id)

puts "...Done seeding"


