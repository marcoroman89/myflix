# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.create(title: "The Dark Knight Rises",
  description: "A great superhero film about Batman.",
  small_cover_url: "/tmp/dark_knight_rises.jpg",
  large_cover_url: "/tmp/dark_knight_rises.jpg")

Video.create(title: "Captain America",
  description: "A great superhero film about Captain America.",
  small_cover_url: "/tmp/captain_america.jpg",
  large_cover_url: "/tmp/captain_america.jpg")

Video.create(title: "Iron Man",
  description: "A great superhero film about Iron Man.",
  small_cover_url: "/tmp/iron_man.jpg",
  large_cover_url: "/tmp/iron_man.jpg")

Video.create(title: "The Avengers",
  description: "A great superhero film about the Avengers.",
  small_cover_url: "/tmp/the_avengers.jpg",
  large_cover_url: "/tmp/the_avengers.jpg")

Video.create(title: "Man of Steel",
  description: "A great superhero film about Superman.",
  small_cover_url: "/tmp/man_of_steel.jpg",
  large_cover_url: "/tmp/man_of_steel")

Video.create(title: "Thor",
  description: "A great superhero film. about Thor",
  small_cover_url: "/tmp/thor.jpg",
  large_cover_url: "/tmp/thor.jpg")