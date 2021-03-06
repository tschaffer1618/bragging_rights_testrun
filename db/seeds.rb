# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  user = User.create(name: Faker::Name.name, email: Faker::Internet.email)
  game = Game.create(name: Faker::Game.title, thumbnail: Faker::Internet.url)
  5.times do
    user.gameplays.create(game: game, winner: Faker::Name.name)
  end
end