# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Product.delete_all
20.times do 
  Product.create(title: Faker::Commerce.product_name, description: Faker::Lorem.sentence, image_url: Faker::LoremFlickr.image(size: "100x100", search_terms: ['pets', 'animals', 'dogs', 'cats', 'puppy', 'kitten', 'bunny', 'fox', 'raccoon', 'fluffy'].sample(2)),  price: Faker::Commerce.price)
end