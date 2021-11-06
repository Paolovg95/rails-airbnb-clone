# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

locations = ["Ipanema", "Copacabana", "Botafogo", "Sao Paulo",
  "Curitiba", " Foz De Iguacu", "Duque da Caixas", "Niteroi"]

List::LIST_OF_SERVICES.each do |type|
  list = List.create(
    listing_type: type
  )
end

# 10.times do
#   user = User.create(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     password: "123456",
#     password_confirmation: "123456"
#   )
#   service = Service.create(
#     service_title: Faker::Titles.word
#     price_rate: rand(100..500),
#     location: "#{locations.sample}, Brazil",
#     service_description: Faker::Config.locale,
#     user_id: user.id,
#     list_id: rand(1..6)
#   )
# end
