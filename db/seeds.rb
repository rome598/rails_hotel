# requiring the gem
require 'faker'

# building a hotel and 25 rooms

Hotel.create!(
    total_rooms: rand(50),
    address: Faker::Address.full_address,
    name: Faker::Restaurant.name
)
puts "Hotel created"

# 25.times do
#     Room.create!(
#         length: rand(10),
#         width: rand(10),
#         taken: rand(2),
#         image: "http://placehold.it/700x400",
#         description: Faker::Lorem.sentence(word_count: 100),
#         hotel_id: Hotel.first.id
#     )
# end

# puts "Rooms created"