# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'pry'

first_action = Action.create({text: "Hi greetings"})
second_action = Action.create({text: "You are in Egypt"})
third_action = Action.create({text: "Leave me alone"})

choices = Choice.create([
    {
        text: "Where am I?",
        next_action: second_action.id,
        choice_type: "NORMAL"
    },
    {
        text: "Nothing, thanks again.",
        next_action: "",
        choice_type: "CLOSE"
    }
])

first_action.choices = choices
first_action.save 
