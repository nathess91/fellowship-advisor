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
    picture: "https://s-media-cache-ak0.pinimg.com/originals/28/59/1d/28591dcb69a0d6ad3701dab8939d3561.jpg"
  },
  {
    name: "Rivendell",
    country: "Eriador",
    picture: "http://vignette4.wikia.nocookie.net/lotr/images/5/53/Rivendell_-_The_Hobbit.PNG/revision/latest?cb=20121111111511"
  },
  {
    name: "Isengard",
    country: "Rohan",
    picture: "http://vignette3.wikia.nocookie.net/lotr/images/4/42/Destruction_of_Isengard_-_Day_After.jpg/revision/latest?cb=20120606113627"
  },
  {
    name: "Helm's Deep",
    country: "Rohan",
    picture: "http://www.lordoftherings.net/legend/lands/helmsdeep/images/helmsdeep1_large.jpg"
  },
  {
    name: "Mount Doom",
    country: "Mordor",
    picture: "http://www.thelandofshadow.com/wp-content/uploads/2016/02/Orodruin6.jpg"
  },
  {
    name: "Shelob's Lair",
    country: "Mordor",
    picture: "http://blindfolly.org/blindfolly/wp-content/uploads/2015/08/lordoftherings_-spiderweb600.jpg"
  }])
