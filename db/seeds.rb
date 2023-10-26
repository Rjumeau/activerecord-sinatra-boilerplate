require "faker"

puts "Creating 10 restaurants"
10.times do
  restaurant = Restaurant.new(
    name: Faker::Games::Pokemon.name,
    address: Faker::Address.street_address
  )
  restaurant.save
  p restaurant
end
puts "Finished"
