# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ween = Product.new(name: "The Pod", price: 40, image_url: "ween.com", description: "The Pod album by Ween on exclusive brown vinyl")
weezer = Product.new(name:"Pinkerton", price: 25, image_url: "weezer.com", description: "Pinkerton album by Weezer on cassette")
fishmans = Product.new(name:"Long Season", price: 45, image_url: "fishmans.come", description: "Long Season album by Fishmans on exclusive blue vinyl")