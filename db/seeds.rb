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

airline1 = Airline.create(name: "Qatar", image: "https://upload.wikimedia.org/wikipedia/commons/b/b2/Airbus_A380_Qatar_Airways.jpg")
airline2 = Airline.create(name: "Emirates Airlines", image: "https://upload.wikimedia.org/wikipedia/commons/3/3a/Emirates_A6-EWA_Boeing_777-200LR_taking_off_from_LAX_%285222343985%29.jpg")
airline3 = Airline.create(name: "Kenya Airways", image: "https://upload.wikimedia.org/wikipedia/commons/5/5f/5Y-KZE_%28aircraft%29_on_final_at_Schiphol_runway_18R_pic3.JPG")
airline4 = Airline.create(name: "KLM", image: "https://upload.wikimedia.org/wikipedia/commons/5/5e/PH-BGU.jpg")
airline5 = Airline.create(name: "Ethopian Airlines", image: "https://upload.wikimedia.org/wikipedia/commons/f/f8/Ethiopian_Airlines_A350_ET-ATQ.jpg")
airline6 = Airline.create(name: "American Airlines", image: "https://upload.wikimedia.org/wikipedia/commons/c/c8/N723AN_Boeing_777_American_Airlines_%289483566883%29.jpg")

Review.create!(trip: "Kenya to Dubai", review: "The flight was great. Plane had nice tv screens, and the food was amazing.", airline_id: airline2.id, user_id: user1.id)
Review.create!(trip: "Nairobi to India", review: "The flight was ok: planes tv screens were quite small, but the food was decent.",  airline_id: airline3.id, user_id: user2.id)
Review.create!(trip: "Nairobi to USA", review: "The flight was great. However, the flight was very long. The attendants were very helpful, and there was a large selection of films to watch.",airline_id: airline3.id, user_id: user1.id)
Review.create!(trip: "Ethiopia to Egypt", review: "Got a bunch of emails for upgrades, then couldn't finish my online check-in due to system errors. After the personal check-in was told to stand at the counter and wait for 15 minutes only to be asked why I am standing there, I can go and board the plane. And on top heavily damaged a brand new Samsonite luggage bag.",  airline_id: airline5.id, user_id: user2.id)
Review.create!(trip: "Mumbai to South Africa", review: "Decided to fly Emirates on the return trip home. I must say I did not regret. The flight experience was amazing.",  airline_id: airline2.id, user_id: user3.id)
Review.create!(trip: "Nairobi to Zanzibar", review: "Great flight. We took off even before time. No Complaints",  airline_id: airline3.id, user_id: user3.id)

puts "...Done seeding"


