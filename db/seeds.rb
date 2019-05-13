require 'faker'

Restaurant.destroy_all
Review.destroy_all

category = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  restaurant = Restaurant.new(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    category: category.sample,
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code)
  review = Review.new(
    restaurant: restaurant,
    rating: rand(0..5),
    content: Faker::TvShows::TheFreshPrinceOfBelAir.quote)
  review.save!
  restaurant.save!
end
