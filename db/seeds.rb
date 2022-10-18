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

puts "creating categories"
emergency1 = Emergency.create(name: "police", description: "Lorem ipsum dolor sit amet consectetur!")

puts "saving file"
emergency1.save

