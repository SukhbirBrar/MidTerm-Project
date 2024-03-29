# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

# ServiceArea.destroy_all
# ServiceName.destroy_all
# Request311.destroy_all

# puts "Request 311 count: #{r.count}"
# puts Request311.first.inspect
# puts ServiceName.first.inspect
# puts ServiceArea.first.inspect
csv_file = Rails.root + 'db/311_request.csv'

options = { file_encoding: 'iso-8859-1' } # Only needed if the CSV file was generated by Excel.

requests = SmarterCSV.process(csv_file) # Pass the "options" hash as a second argument if CSV was created by Excel.

puts requests.first.inspect
requests.each do |request|
  service_name = ServiceName.find_or_create_by(service_name: request[:service_request])
  service_area = ServiceArea.find_or_create_by(service_area: request[:service_area])

  puts service_name.errors.messages
  puts service_area.errors.messages
  req = Request311.create(service_name: service_name, service_area: service_area,
                          ward: request[:ward], neighbourhood: request[:neighbourhood])

  puts req.errors.messages
end

puts Request311.count
puts ServiceArea.count
puts ServiceName.count
# 5.times do |_r|
#   Request = Request311.create(
#     date = Faker::Date.between(from: 2.days.ago, to: Date.today),
#     service_area = Faker::Address.city
#   )
# end
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
