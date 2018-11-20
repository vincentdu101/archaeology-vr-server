# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'pry'

game = Game.create(title: "Vikings")

first_contact = Contact.create(text: "Hi greetings", game: game)
second_contact = Contact.create(text: "You are in Egypt", game: game)
third_contact = Contact.create(text: "Leave me alone", game: game)

first_choice = Choice.create(text: "Where am I?", choice_type: "NORMAL", game: game)
second_choice = Choice.create(text: "Nothing, thanks again.", choice_type: "CLOSE", game: game)

first_contact.outcomes.create(choice: first_choice)
first_contact.outcomes.create(choice: second_choice)

first_choice.outcomes.create(contact: second_contact)

binding.pry
