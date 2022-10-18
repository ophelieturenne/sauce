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

Emergency.destroy_all
Aid.destroy_all

# //...........CREATE........................//
puts "creating emergencies categories"
emergency1 = Emergency.create(name: "police", description: "Lorem ipsum dolor sit amet consectetur!")

puts "creating first-aids categories"
aid1 = Aid.create(name: "burns", description: "Lorem ipsum dolor sit amet consectetur!")
puts "saving first-aid file "
aid1.save

puts "creating steps"
step1 = Step.create(aid_id: 11, position: 1, description: "Lorem ipsum dolor sit amet consectetur!")

# //............SAVE........................//
puts "saving emergency file"
emergency1.save


puts "saving steps file "
step1.save
