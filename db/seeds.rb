# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.create(title: "Family Guy",
  description: "A crazy comedy about a crazy family. It is very funny.",
  small_cover_url: "/tmp/family_guy.jpg",
  large_cover_url: "/tmp/family_guy.jpg")

Video.create(title: "Futurama",
  description: "A crazy comedy about a crazy family. It is very funny.",
  small_cover_url: "/tmp/futurama.jpg",
  large_cover_url: "/tmp/futurama.jpg")

Video.create(title: "Monk",
  description: "A crazy comedy about a crazy family. It is very funny.",
  small_cover_url: "/tmp/monk.jpg",
  large_cover_url: "/tmp/monk.jpg")

Video.create(title: "South Park",
  description: "A crazy comedy about a crazy family. It is very funny.",
  small_cover_url: "/tmp/south_park.jpg",
  large_cover_url: "/tmp/south_park.jpg")