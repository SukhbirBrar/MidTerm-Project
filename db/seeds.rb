# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

5.times do |_r|
  Request = Request311.create(
    date = Faker::Date.between(from: 2.days.ago, to: Date.today),
    service_area = Faker::Address.city
  )
end
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
