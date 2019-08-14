require 'faker'
CATEGORIES = %w{chinese italian japanese french belgian}

5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: CATEGORIES.sample
  )
  restaurant.save!
end
