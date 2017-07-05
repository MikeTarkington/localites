# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# require 'faker'
#
# max_users = 10
# users_needed = max_users - User.count
#
# users_needed.times do
#   User.create(email: Faker::Internet.safe_email, password_encrypted: 'password')
# end

if City.count == 0
  City.create(city_name: 'San Francisco')
end

file = "raw_sf_neighborhoods.txt"
if Neighborhood.count == 0
  File.open(file).readlines.each do |line|
    Neighborhood.create(city_id: 1, neighborhood_name: line)
  end
end
