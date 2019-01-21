# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'pry'

game = Game.create(title: "Vikings")

# first_contact = Contact.create(text: "Hi greetings", game: game)
# second_contact = Contact.create(text: "You are in Egypt", game: game)
# third_contact = Contact.create(text: "Leave me alone", game: game)

# first_choice = Choice.create(text: "Where am I?", choice_type: "NORMAL", game: game)
# second_choice = Choice.create(text: "Nothing, thanks again.", choice_type: "CLOSE", game: game)

# first_contact.outcomes.create(choice: first_choice)
# first_contact.outcomes.create(choice: second_choice)

# first_choice.outcomes.create(contact: second_contact)

VC1S00 = Contact.create(
    text: "Hi, how can I help you?", 
    character_type: "SOLDIER",
    hierarchy: 1,
    game: game
)

VC1S01C = Choice.create(
    text: "How do I find someone who can help me?", 
    choice_type: "NORMAL",
    game: game
)

VC1S02C = Choice.create(
    text: "Where am I?", 
    choice_type: "NORMAL",
    game: game    
)

nothing_thanks = Choice.create(
    text: "Nothing, thanks.", 
    choice_type: "CLOSE",
    game: game    
)

VC1S00.outcomes.create([{choice: VC1S01C}, {choice: VC1S02C}, {choice: nothing_thanks}])

VC1S01 = Contact.create(
    text: "You can talk to our lord Earl Erik the Red he is in the town square.", 
    character_type: "SOLDIER",
    hierarchy: 1,
    game: game
)

VC1S01C.outcomes.create(contact: VC1S01)

VC1S02C1 = Choice.create(
    text: "I see. Where am I?", 
    choice_type: "NORMAL",
    game: game    
)

ok_thanks = Choice.create(
    text: "OK, thanks.", 
    choice_type: "CLOSE",
    game: game    
)

VC1S01.outcomes.create([{choice: VC1S02C1}, {choice: ok_thanks}])

VC1S02 = Contact.create(
    text: "You are in Grœnland. We are establishing our first fort here under our lord Earl Erik the Red.",
    character_type: "SOLDIER",
    hierarchy: 1,
    game: game
)

VC1S02C.outcomes.create(contact: VC1S02)
VC1S02C1.outcomes.create(contact: VC1S02)

VC1S02C2 = Choice.create(
    text: "How do I find someone who can help me?", 
    choice_type: "NORMAL",
    game: game    
)

VC1S02C2.outcomes.create(contact: VC1S01)
VC1S02.outcomes.create([{choice: VC1S02C2}, {choice: ok_thanks}])

VC1S03 = Contact.create(
    text: "Stop bothering me I need to get going.",
    character_type: "SOLDIER",
    hierarchy: 1,
    game: game
)

VC1S03.outcomes.create([{choice: ok_thanks}])

VC1S04 = Contact.create(
    text: "Sorry I need to get going.",
    character_type: "SOLDIER",
    hierarchy: 1,
    game: game
)

VC1S04.outcomes.create([{choice: ok_thanks}])

VC1S05 = Contact.create(
    text: "Greetings Warrior, I am Earl Erik the Red.",
    character_type: "EricTheRed",
    hierarchy: 1,
    game: game
)

VC1S00A = Choice.create(
    text: "Greetings your lordship, can you tell me if you've seen any glowing stones?", 
    choice_type: "NORMAL",
    game: game    
)

VC1S01A = Choice.create(
    text: "Greetings your lordship, can I help you with anything?", 
    choice_type: "NORMAL",
    game: game    
)

honor = Choice.create(
    text: "It is an honor to meet you sir, good day.", 
    choice_type: "CLOSE",
    game: game    
)

VC1S05.outcomes.create([{choice: VC1S00A}, {choice: VC1S01A}, {choice: honor}])

VC1S06 = Contact.create(
    text: "Yes I have heard of a report of this from our workers to the east of the village. 
            You can talk to the lead worker there Illugi about it more if you like.",
    character_type: "EricTheRed",
    hierarchy: 1,
    game: game
)

VC1S00A.outcomes.create(contact: VC1S06)

VC1S02A = Choice.create(
    text: "I see, I was wondering if I can help you with anything?", 
    choice_type: "NORMAL",
    game: game    
)

thank_lord = Choice.create(
    text: "Thank your your lordship for the news. Good day.", 
    choice_type: "CLOSE",
    game: game    
)

VC1S06.outcomes.create([{choice: VC1S02A}, {choice: thank_lord}])

VC1S07 = Contact.create(
    text: "Yes actually, I need someone to deliver this message to our ship captain near the river to the west of the village. 
            Once you deliver it, come back and I will reward you with an ax.",
    character_type: "EricTheRed",
    hierarchy: 2,
    game: game
)

VC1S01A.outcomes.create(contact: VC1S07)
VC1S02A.outcomes.create(contact: VC1S07)

yes_lord = Choice.create(
    text: "Yes sire your wish is my command.", 
    choice_type: "CLOSE",
    item_granted: "message",
    game: game    
)

VC1S07.outcomes.create([{choice: yes_lord}])

VC1S08 = Contact.create(
    text: "Greetings again Warrior.",
    character_type: "EricTheRed",
    hierarchy: 1,
    game: game
)

VC1S08.outcomes.create([{choice: VC1S00A}, {choice: VC1S01A}, {choice: honor}])

VC1S09 = Contact.create(
    text: "Greetings again Warrior, have you done the task I asked?",
    character_type: "EricTheRed",
    hierarchy: 2,
    game: game
)

VC1S03A = Choice.create(
    text: "Yes sire I have delivered it as promised", 
    choice_type: "NORMAL",
    item_gone: "message",
    game: game    
)

VC1S04A = Choice.create(
    text: "Not yet sire, I wanted to ask again where your ship captain was?", 
    choice_type: "NORMAL",
    game: game    
)

not_yet_sire = Choice.create(
    text: "It is an honor to meet you sir, good day.", 
    choice_type: "CLOSE",
    game: game    
)

VC1S09.outcomes.create([{choice: VC1S03A}, {choice: VC1S04A}, {choice: not_yet_sire}])

VC1S010 = Contact.create(
    text: "Good job warrior, here is your gift as promised.",
    character_type: "EricTheRed",
    hierarchy: 2,
    game: game
)

VC1S03A.outcomes.create(contact: VC1S010)

VC1S05A = Choice.create(
    text: "Not yet sire, I wanted to ask again where your ship captain was?", 
    choice_type: "NORMAL",
    game: game    
)

thank_sire = Choice.create(
    text: "Thank you sire.", 
    choice_type: "CLOSE",
    item_granted: "axe",
    finish_task: "message",
    game: game    
)

VC1S010.outcomes.create([{choice: VC1S05A}, {choice: thank_sire}])

VC1S011 = Contact.create(
    text: "He is located to the west of the village near the river.",
    character_type: "EricTheRed",
    hierarchy: 2,
    game: game
)

VC1S04A.outcomes.create(contact: VC1S011)
VC1S05A.outcomes.create(contact: VC1S011)

with_haste = Choice.create(
    text: "Thank you sire, I will get to the task at haste.", 
    choice_type: "CLOSE",
    game: game    
)

VC1S011.outcomes.create([{choice: with_haste}])

VC1S012 = Contact.create(
    text: "Greetings again warrior.",
    character_type: "EricTheRed",
    hierarchy: 2,
    game: game
)

VC1S06A = Choice.create(
    text: "Greetings your lordship, can you tell me again where you saw the glowing stones?", 
    choice_type: "NORMAL",
    game: game    
)

greetings_again = Choice.create(
    text: "Greetings again sire. Have a good day.", 
    choice_type: "CLOSE",
    game: game    
)

VC1S06A.outcomes.create(contact: VC1S06)

VC1S012.outcomes.create([{choice: VC1S06A}, {choice: greetings_again}])

VC1S013 = Contact.create(
    text: "Greetings Warrior. I am Illugi the lead worker of this worker unit. How may I help you?",
    character_type: "Illugi",
    hierarchy: 1,
    game: game
)

VC1S07A = Choice.create(
    text: "Greetings sir, can you tell me if you've seen any glowing stones?",
    choice_type: "NORMAL",
    game: game    
)

honor = Choice.create(
    text: "It is an honor to meet you sir, good day.",
    choice_type: "CLOSE",
    game: game    
)

VC1S013.outcomes.create([{choice: VC1S07A}, {choice: honor}])

VC1S014 = Contact.create(
    text: "Yes Warrior, my men had one found one lying on top of the ground the other day. Unfortunately they had pile some wood on top of it so if you like it you will need an axe to chop through the wood to get it.",
    character_type: "Illugi",
    hierarchy: 2,
    game: game
)

VC1S013.outcomes.create(contact: VC1S014)

VC1S08A = Choice.create(
    text: "I see, can you tell me where I can get an axe?",
    choice_type: "NORMAL",
    game: game    
)

honor_and_info = Choice.create(
    text: "It is an honor to meet you sir, thank you for the info good day.",
    choice_type: "CLOSE",
    game: game    
)

VC1S014.outcomes.create([{choice: VC1S08A}, {choice: honor_and_info}])

VC1S015 = Contact.create(
    text: "You can ask our Earl Erik the Red, he may be able to give you one if you deliver a message for him.",
    character_type: "Illugi",
    hierarchy: 2,
    game: game
)

VC1S08A.outcomes.create(contact: VC1S015)
VC1S015.outcomes.create([{choice: honor_and_info}])

VC1S015B = Contact.create(
    text: "Greetings again Warrior.",
    character_type: "Illugi",
    hierarchy: 2,
    game: game
)

VC1S09A = Choice.create(
    text: "Greetings again sir, can you tell me again if you've seen any glowing stones?",
    choice_type: "NORMAL",
    game: game    
)

VC1S010A = Choice.create(
    text: "Greetings again sir, can you tell me again where I can get an axe?",
    choice_type: "NORMAL",
    game: game    
)

VC1S015B.outcomes.create([{choice: VC1S09A}, {choice: VC1S010A}, {choice: honor_and_info}])

VC1S016 = Contact.create(
    text: "Yes Warrior, my men had one found one lying on top of the ground the other day. Unfortunately they had pile some wood on top of it so if you like it you will need an axe to chop through the wood to get it.",
    character_type: "Illugi",
    hierarchy: 2,
    game: game
)

VC1S011A = Choice.create(
    text: "Greetings again sir, can you tell me again where I can get an axe?",
    choice_type: "NORMAL",
    game: game    
)

VC1S09A.outcomes.create(contact: VC1S016)
VC1S010A.outcomes.create(contact: VC1S015)
VC1S011A.outcomes.create(contact: VC1S015)
VC1S016.outcomes.create([{choice: VC1S011A}, {choice: honor_and_info}])

VC1S017 = Contact.create(
    text: "Greetings Warrior, how may I be of assistance",
    character_type: "ShipCaptain",
    hierarchy: 1,
    game: game
)

VC1S012A = Choice.create(
    text: "Greetings sir, I have a message for you from our Earl Erik the Red.",
    choice_type: "NORMAL",
    requirement: "message",
    game: game    
)

VC1S013A = Choice.create(
    text: "Greetings sir, have you seen any glowing orbs today?",
    choice_type: "NORMAL",
    game: game    
)

nice_to_meet = Choice.create(
    text: "It is nice to meet you sir, have a good day.",
    choice_type: "CLOSE",
    game: game    
)

VC1S017.outcomes.create([{choice: VC1S012A}, {choice: VC1S013A}, {choice: nice_to_meet}])

VC1S018 = Contact.create(
    text: "Thank you warrior, please report back to the Earl that I have received it. How else can I be of assistance?",
    character_type: "ShipCaptain",
    requirement: "message",
    hierarchy: 2,
    game: game
)

VC1S012A.outcomes.create(contact: VC1S018)

VC1S014A = Choice.create(
    text: "Yes sir one question, have you seen any glowing orbs today?",
    choice_type: "NORMAL",
    game: game    
)

good_day = Choice.create(
    text: "That is all sir thank you, have a good day.",
    choice_type: "CLOSE",
    game: game    
)

VC1S018.outcomes.create([{choice: VC1S014A}, {choice: good_day}])

VC1S019 = Contact.create(
    text: "Yes I saw one near the edge of the river South of here. However, you probably need a net to pick it up from the water. You can grab one from Glaumur. He is in charge of supplies near the village center.",
    character_type: "ShipCaptain",
    requirement: "message",
    hierarchy: 2,
    game: game
)

VC1S013A.outcomes.create(contact: VC1S019)
VC1S014A.outcomes.create(contact: VC1S019)

thanks_good_day = Choice.create(
    text: "Thank you again sir, have a good day.",
    choice_type: "CLOSE",
    game: game    
)

VC1S019.outcomes.create([{choice: thanks_good_day}])
VC1S012A.outcomes.create(contact: VC1S018)
VC1S015.outcomes.create(contact: VC1S018)
# VC1S020.outcomes.create([{choice: VC1S015}, {choice: thanks_good_day}])

VC1S021 = Contact.create(
    text: "Greetings again Warrior, how may I be of assistance",
    character_type: "ShipCaptain",
    hierarchy: 2,
    game: game
)

VC1S016A = Choice.create(
    text: "Greetings again sir, I have a message for you from our Earl Erik the Red.",
    choice_type: "NORMAL",
    requirement: "message",
    game: game    
)

VC1S017A = Choice.create(
    text: "Greetings again sir, have you seen any glowing orbs today?",
    choice_type: "NORMAL",
    game: game    
)

VC1S016A.outcomes.create(contact: VC1S018)
VC1S017A.outcomes.create(contact: VC1S019)
VC1S021.outcomes.create([{choice: VC1S016A}, {choice: VC1S017A}, {choice: thanks_good_day}])

VC1S022= Contact.create(
    text: "Greetings Warrior, how may I be of assistance",
    character_type: "Glaumur",
    hierarchy: 1,
    game: game
)

VC1S017A = Choice.create(
    text: "Greetings sir, may I have a net from you.",
    choice_type: "NORMAL",
    game: game    
)

VC1S018A = Choice.create(
    text: "Greetings sir, have you seen any glowing orbs today?",
    choice_type: "NORMAL",
    game: game    
)

VC1S022.outcomes.create([{choice: VC1S017A}, {choice: VC1S018A}, {choice: thanks_good_day}])

VC1S023= Contact.create(
    text: "Certainly, here you go warrior.",
    character_type: "Glaumur",
    hierarchy: 2,
    game: game
)

VC1S017A.outcomes.create(contact: VC1S023)

VC1S019A = Choice.create(
    text: "Thank you sir, have you seen any glowing orbs today?",
    choice_type: "NORMAL",
    item_granted: "net",
    game: game    
)

VC1S023.outcomes.create([{choice: VC1S019A}, {choice: thanks_good_day}])

VC1S024= Contact.create(
    text: "Yes I have heard that Grettir and his band of traitors has found one to the North of the village near the forests. If you go to get it beware they may be hostile.",
    character_type: "Glaumur",
    hierarchy: 2,
    game: game
)

VC1S020A = Choice.create(
    text: "Greetings sir, may I have a net from you.",
    choice_type: "NORMAL",
    game: game    
)

VC1S019A.outcomes.create(contact: VC1S024)
VC1S020A.outcomes.create(contact: VC1S023)
VC1S024.outcomes.create([{choice: VC1S020A}, {choice: thanks_good_day}])


binding.pry