# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Movie.destroy_all
Ticket.destroy_all

Movie.create!([{
  name: "Ant-Man",
  description: "Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world.",
  director: "Peyton Reed",
  price: 5
},
{
  name: "Pixels",
  description: "When aliens misinterpret video feeds of classic arcade games as a declaration of war, they attack the Earth in the form of the video games.",
  director: "Chris Columbus",
  price: 3
},
{
  name: "Terminator Genisys",
  description: "When John Connor, leader of the human resistance, sends Sgt. Kyle Reese back to 1984 to protect Sarah Connor and safeguard the future, an unexpected turn of events creates a fractured timeline. Now, Sgt. Reese finds himself in a new and unfamiliar version of the past, where he is faced with unlikely allies, including the Guardian, dangerous new enemies, and an unexpected new mission: To reset the future...",
  director: "Alan Taylor",
  price: 10
}])

Ticket.create! ([{
  name: "Ant-Man",
  number: 3,
  cost: 15
}])
