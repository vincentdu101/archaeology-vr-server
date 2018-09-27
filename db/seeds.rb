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

first_choice = Choice.create({
    text: "Where am I?",
    next_action: second_action.id,
    choice_type: "NORMAL"
})
first_choice.save

second_choice = Choice.create({
    text: "Nothing, thanks again.",
    next_action: "",
    choice_type: "CLOSE"
})
second_choice.save

first_action.choices = [first_choice, second_choice]
first_action.save 

all = Action.all

binding.pry
