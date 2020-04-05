# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times {Artist.create(
    name: Faker::Artist.name,
    bio: Faker::GreekPhilosophers.quote
    )}
5.times {Genre.create(name: Faker::App.name)}

10.times {Song.create(
    name: Faker::App.name,
    artist_id: Artist.all.sample.id,
    genre_id: Genre.all.sample.id)}