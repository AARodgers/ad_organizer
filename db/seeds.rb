# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

owner1 = Owner.create! name: "Bob", email: "bob@bob.com"
site1 = Site.create! url: "bobsdentistry.com", owner: owner1
category1 = Category.create! name: "Dentistry", sites: [site1]
ad1 = Ad.create! title: "Get Clean Teeth", content: "We are the best toothpaste", url: "besttoothpaste.com", categories: [category1]
