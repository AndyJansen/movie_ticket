# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Movie.destroy_all
Ticket.destroy_all

Movie.create!([{
  name: "Ant-Man",
  description: "Guy is the size of an ant",
  director: "Peyton Reed",
  price: 5
},
{
  name: "Lord of the Rings",
  description: "The one ring to rule them all",
  director: "Chris Columbus",
  price: 3
},
{
  name: "Star Wars",
  description: "Movie about a war in the stars",
  director: "Alan Taylor",
  price: 10
}])

Ticket.create! ([{
  name: "Ant-Man",
  number: 3,
  cost: 15,
  card_number: 123456789
}])
