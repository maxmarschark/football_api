# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

25.times do
  Team.create({
    team_city: FFaker::Address.city,
    team_name: FFaker::Name.name,
    mascot: FFaker::Avatar.image
  })
end

50.times do
  Player.create({
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
    age: FFaker::Time.date,
    height: Random.new.rand(175..220),
    weight: Random.new.rand(175..220),
    college: FFaker::Education.school,
    team_id: Random.new.rand(1..25)
  })
end
