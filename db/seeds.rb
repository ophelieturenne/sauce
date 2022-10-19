# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts "starting seeding"
puts "cleaning database"

Step.destroy_all
Aid.destroy_all
User.destroy_all
Emergency.destroy_all

puts "creating aids"

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666087132/sauce/Asthma_e1j8tj.png")
aid = Aid.new(name: "Asthma", description: " description ")
aid.photo.attach(io: file, filename: "asthma", content_type: "image/png")
aid.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666087148/sauce/Bleeding_jhuwy5.png")
aid1 = Aid.new(name: "Bleeding", description: " description 1 ")
aid1.photo.attach(io: file, filename: "bleeding", content_type: "image/png")
aid1.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666087163/sauce/Burns_d5qnjw.png")
aid2 = Aid.new(name: "Burns", description: " description 2 ")
aid2.photo.attach(io: file, filename: "burns", content_type: "image/png")
aid2.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666087177/sauce/Drowning_o8jhbh.jpg")
aid3 = Aid.new(name: "Drowning", description: " description 3 ")
aid3.photo.attach(io: file, filename: "drowning", content_type: "image/jpg")
aid3.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666087184/sauce/Electric_Shock_cmyt9g.png")
aid4 = Aid.new(name: "Electric Shock", description: " description 4 ")
aid4.photo.attach(io: file, filename: "electric_shock", content_type: "image/png")
aid4.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666087203/sauce/Fracture_ny4dne.jpg")
aid5 = Aid.new(name: "Fracture", description: " description 5 ")
aid5.photo.attach(io: file, filename: "fracture", content_type: "image/jpg")
aid5.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666087216/sauce/Heart_Attack_gmnqx4.jpg")
aid6 = Aid.new(name: "Heart Attack", description: " description 6 ")
aid6.photo.attach(io: file, filename: "heart_attack.", content_type: "image/jpg")
aid6.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666087230/sauce/Seizure_bsmnyx.jpg")
aid7 = Aid.new(name: "Seizure", description: " description 7 ")
aid7.photo.attach(io: file, filename: "seizure", content_type: "image/jpg")
aid7.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666087241/sauce/Unconscious_bmjbj6.jpg")
aid8 = Aid.new(name: "Unconscious", description: " description 8 ")
aid8.photo.attach(io: file, filename: "unconscious", content_type: "image/jpg")
aid8.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666087800/sauce/Food_Poisoning_ayulxo.webp")
aid9 = Aid.new(name: "Food Poisoning", description: " description 9 ")
aid9.photo.attach(io: file, filename: "food_poisoning", content_type: "image/webp")
aid9.save

puts "creating users"
user1 = User.new(email: "john@gmail.com", password: "123456")
user1.save

puts "creating emergencies"
emergency1 = Emergency.create(name: "police", description: "Lorem ipsum dolor sit amet consectetur!", user: user1)

puts "save emergencies"
emergency1.save


puts "creating steps"
# steps for aid (asthma)
file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666163143/sauce/Asthma/Screenshot_122_rmp6lk.png")
step1 = Step.new(aid: aid, position: 1, description: "sit the person upright")
step1.photo.attach(io: file, filename: "asthma", content_type: "image/png")
step1.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666163994/sauce/Asthma/Screenshot_122_cezoas.png")
step2 = Step.new(aid: aid, position: 2, description: "Give 4 separate puffs of blue/grey reliever puffer
– Shake puffer
– Put 1 puff into spacer
– Take 4 breaths from spacer
Repeat until 4 puffs have been taken
Remember: shake, 1 puff, 4 breaths")
step2.photo.attach(io: file, filename: "asthma", content_type: "image/png")
step2.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1666163745/sauce/Asthma/Screenshot_122_sxd7ei.png")
step3 = Step.new(aid: aid, position: 3, description: "Wait 4 minutes
If there is no improvement, give 4 more
separate puffs of blue/grey reliever as above ")
step3.photo.attach(io: file, filename: "asthma", content_type: "image/png")
step3.save

step4 = Step.new(aid: aid, position: 4, description: "If there is still no improvement dial
Triple Zero (000) for an ambulance
Keep giving 4 separate puffs every 4 minutes
until emergency assistance arrives ")

# steps for aid1 (bleeding)
step1 = Step.create(aid: aid1, position: 1, description: "Lorem ipsum 1")
step2 = Step.create(aid: aid1, position: 2, description: "Lorem ipsum 2 ")


puts "saving steps file "
step1.save
step2.save
step3.save
