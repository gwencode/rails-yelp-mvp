# frozen_string_literal: true

require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

categories = %w[chinese italian japanese french belgian]

5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: categories.sample)
end

puts 'Finished!'
