# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


cities = City.create([
  {
    name: "The Shire",
    country: "Eriador",
    picture: "http://i.imgur.com/vDwV7Sz.jpg"
  },
  {
    name: "Rivendell",
    country: "Eriador",
    picture: "http://i.imgur.com/HnzRkEN.jpg"
  },
  {
    name: "Isengard",
    country: "Rohan",
    picture: "http://i.imgur.com/IBTYK7R.jpg"
  },
  {
    name: "Helm's Deep",
    country: "Rohan",
    picture: "http://i.imgur.com/bPxebsL.png"
  },
  {
    name: "Mount Doom",
    country: "Mordor",
    picture: "http://i.imgur.com/FlgkWAX.png"
  },
  {
    name: "Shelob's Lair",
    country: "Mordor",
    picture: "http://i.imgur.com/c1mkcRk.jpg"
  }])
