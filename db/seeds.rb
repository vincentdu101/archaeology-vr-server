# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

choices = Choice.create([
    {
        text: "Where am I?",
        sequence: "VC1S1-0",
        choice_type: "NORMAL"
    },
    {
        text: "Nothing, thanks again.",
        sequence: "",
        choice_type: "CLOSE"
    }
])