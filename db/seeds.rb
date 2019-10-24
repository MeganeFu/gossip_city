# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

10.times do 
  city = City.create!(
    name: Faker::Address.city,
    zipcode: Faker::Address.zip_code)
end

10.times do 
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Quotes::Shakespeare.hamlet_quote,
    email: Faker::Internet.email,
    age: Faker::Number.between(from: 18, to: 80),
    city_id: City.all.sample.id)
end


#20.times do
#  gossip = Gossip.create!(
#    title: Faker::Book.title,
#    content: Faker::Quote.most_interesting_man_in_the_world,
#    user_id: User.all.sample.id)
#end

