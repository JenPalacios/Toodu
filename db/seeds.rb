require 'faker'

#create items
20.times do
  Item.create!(
    name: Faker::Lorem.word
    )
end
items = Item.all

puts "Seed finished"
puts "#{Item.count} items created"
