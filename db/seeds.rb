# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


(1..10).to_a.each_with_index { |element, index|
  restaurant = Restaurant.new(name: "resto",
                address: "Obkerkamp",
                category: "italian",
                phone_number: index)
  restaurant.save
  (1..3).to_a.each_with_index { |element2, index2|
    review = Review.new(rating: index2, restaurant_id: index)
    review.save
  }
}
