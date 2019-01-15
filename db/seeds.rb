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

VC1S02C2 = Choice.create(
    text: "How do I find someone who can help me?", 
    choice_type: "NORMAL",
    game: game    
)

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

yes_lord = Choice.create(
    text: "Yes sire your wish is my command.", 
    choice_type: "CLOSE",
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

VC1S05A = Choice.create(
    text: "Not yet sire, I wanted to ask again where your ship captain was?", 
    choice_type: "NORMAL",
    game: game    
)

thank_sire = Choice.create(
    text: "Thank you sire.", 
    choice_type: "CLOSE",
    game: game    
)

VC1S010.outcomes.create([{choice: VC1S05A}, {choice: thank_sire}])

VC1S011 = Contact.create(
    text: "He is located to the west of the village near the river.",
    character_type: "EricTheRed",
    hierarchy: 2,
    game: game
)

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

VC1S015.outcomes.create([{choice: honor_and_info}])

VC1S015 = Contact.create(
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

VC1S015.outcomes.create([{choice: VC1S09A}, {choice: VC1S010A}, {choice: honor_and_info}])

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
    hierarchy: 2,
    game: game
)

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
    hierarchy: 2,
    game: game
)

thanks_good_day = Choice.create(
    text: "Thank you again sir, have a good day.",
    choice_type: "CLOSE",
    game: game    
)

VC1S019.outcomes.create([{choice: thanks_good_day}])

VC1S020 = Contact.create(
    text: "Yes I saw one near the edge of the river South of here. However, you probably need a net to pick it up from the water. You can grab one from Glaumur. He is in charge of supplies near the village center.",
    character_type: "ShipCaptain",
    hierarchy: 2,
    game: game
)

VC1S015A = Choice.create(
    text: "Thank you sir, I also have a message for you from our Earl Erik the Red.",
    choice_type: "NORMAL",
    game: game    
)

VC1S020.outcomes.create([{choice: VC1S015A}, {choice: thanks_good_day}])

VC1S021 = Contact.create(
    text: "Greetings again Warrior, how may I be of assistance",
    character_type: "ShipCaptain",
    hierarchy: 2,
    game: game
)

VC1S016A = Choice.create(
    text: "Greetings again sir, I have a message for you from our Earl Erik the Red.",
    choice_type: "NORMAL",
    game: game    
)

VC1S017A = Choice.create(
    text: "Greetings again sir, have you seen any glowing orbs today?",
    choice_type: "NORMAL",
    game: game    
)

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

VC1S019A = Choice.create(
    text: "Thank you sir, have you seen any glowing orbs today?",
    choice_type: "NORMAL",
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

VC1S024.outcomes.create([{choice: VC1S020A}, {choice: thanks_good_day}])


binding.pry

# Contact.create([
#     {
#         "id": "VC1S0-2",
#         text: "You are in Grœnland. We are establishing our first fort here under our lord Earl Erik the Red",
#         "btns": ["positive", "close"],
#         "positiveText": "How do I find someone who can help me?",
#         "close": "Ok, thanks.",
#         "nextPositiveSequence": "VC1S0-1",
#         "character": "Soldier"
#     },
#     {
#         "id": "VC1S1-0",
#         text: "Stop bothering me I need to get going.",
#         "btns": ["close"],
#         "close": "Ok, thanks.",
#         "character": "Soldier"
#     },
#     {
#         "id": "VC1S2-0",
#         text: "Sorry I need to get going.",
#         "btns": ["close"],
#         "close": "Ok, thanks.",
#         "character": "Soldier"
#     },
#     {
#         "id": "VC1S0-0A",
#         text: "Greetings Warrior, I am Earl Erik the Red.",
#         "btns": ["positive", "negative", "close"],
#         "positiveText": "Greetings your lordship, can you tell me if you've seen any glowing stones?",
#         "negativeText": "Greetings your lordship, can I help you with anything?",
#         "close": "It is an honor to meet you sir, good day.",
#         "nextPositiveSequence": "VC1S1-0A",
#         "nextNegativeSequence": "VC1S2-0A",
#         "resetChoice": "VC1S0-1A",
#         "character": "EricTheRed"
#     },
#     {
#         "id": "VC1S1-0A",
#         text: "Yes I have heard of a report of this from our workers to the east of the village. You can talk to the lead worker there Illugi about it more if you like.",
#         "btns": ["negative", "close"],
#         "negativeText": "I see, I was wondering if I can help you with anything?",
#         "close": "Thank your your lordship for the news. Good day.",
#         "nextNegativeSequence": "VC1S2-0A",
#         "resetChoice": "VC1S0-1A",
#         "character": "EricTheRed"
#     },
#     {
#         "id": "VC1S2-0A",
#         text: "Yes actually, I need someone to deliver this message to our ship captain near the river to the west of the village. Once you deliver it, come back and I will reward you with an ax.",
#         "btns": ["close"],
#         "itemGranted": "message",
#         "close": "Yes sire your wish is my command.",
#         "resetChoice": "VC1S1-1A",
#         "character": "EricTheRed"
#     },
#     {
#         "id": "VC1S0-1A",
#         text: "Greetings again Warrior.",
#         "btns": ["positive", "negative", "close"],
#         "positiveText": "Greetings your lordship, can you tell me if you've seen any glowing stones?",
#         "negativeText": "Greetings your lordship, can I help you with anything?",
#         "close": "It is an honor to meet you again sir, good day.",
#         "nextPositiveSequence": "VC1S1-0A",
#         "nextNegativeSequence": "VC1S2-0A",
#         "resetChoice": "VC1S0-1A",
#         "character": "EricTheRed"
#     },
#     {
#         "id": "VC1S1-1A",
#         text: "Greetings again Warrior, have you done the task I asked?",
#         "btns": ["positive", "negative", "close"],
#         "positiveText": "Yes sire I have delivered it as promised",
#         "negativeText": "Not yet sire, I wanted to ask again where your ship captain was?",
#         "close": "Not yet sire, I will get to it at haste.",
#         "nextPositiveSequence": "VC1S2-1A",
#         "nextNegativeSequence": "VC1S3-1A",
#         "resetChoice": "VC1S1-1A",
#         "character": "EricTheRed",
#         "positiveItemGone": "message"
#     },
#     {
#         "id": "VC1S2-1A",
#         text: "Good job warrior, here is your gift as promised.",
#         "btns": ["negative", "close"],
#         "negativeText": "Not yet sire, I wanted to ask again where your ship captain was?",
#         "close": "Thank you sire.",
#         "nextNegativeSequence": "VC1S3-1A",
#         "itemGranted": "axe",
#         "resetChoice": "VC1S4-1A",
#         "finishTask": "message",
#         "character": "EricTheRed"
#     },
#     {
#         "id": "VC1S3-1A",
#         text: "He is located to the west of the village near the river.",
#         "btns": ["close"],
#         "close": "Thank you sire, I will get to the task at haste.",
#         "resetChoice": "VC1S1-1A",
#         "character": "EricTheRed"
#     },
#     {
#         "id": "VC1S4-1A",
#         text: "Greetings again warrior.",
#         "btns": ["positive", "close"],
#         "positiveText": "Greetings your lordship, can you tell me again where you saw the glowing stones?",
#         "close": "Greetings again sire. Have a good day.",
#         "nextPositiveSequence": "VC1S1-0A",
#         "resetChoice": "VC1S4-1A",
#         "character": "EricTheRed"
#     },
#     {
#         "id": "VC1S0-0B",
#         text: "Greetings Warrior. I am Illugi the lead worker of this worker unit. How may I help you?",
#         "btns": ["positive", "close"],
#         "positiveText": "Greetings sir, can you tell me if you've seen any glowing stones?",
#         "close": "It is an honor to meet you again sir, good day.",
#         "nextPositiveSequence": "VC1S1-1B",
#         "resetChoice": "VC1S3-1B",
#         "character": "Illugi"
#     },
#     {
#         "id": "VC1S1-1B",
#         text: "Yes Warrior, my men had one found one lying on top of the ground the other day. Unfortunately they had pile some wood on top of it so if you like it you will need an axe to chop through the wood to get it.",
#         "btns": ["positive", "close"],
#         "positiveText": "I see, can you tell me where I can get an axe?",
#         "close": "It is an honor to meet you sir, thank you for the info good day.",
#         "nextPositiveSequence": "VC1S2-1B",
#         "resetChoice": "VC1S3-1B",
#         "character": "Illugi"
#     },
#     {
#         "id": "VC1S2-1B",
#         text: "You can ask our Earl Erik the Red, he may be able to give you one if you deliver a message for him.",
#         "btns": ["close"],
#         "close": "It is an honor to meet you sir, thank you for the info good day.",
#         "resetChoice": "VC1S3-1B",
#         "character": "Illugi"
#     },
#     {
#         "id": "VC1S3-1B",
#         text: "Greetings again Warrior.",
#         "btns": ["positive", "negative", "close"],
#         "positiveText": "Greetings again sir, can you tell me again if you've seen any glowing stones?",
#         "negativeText": "Greetings again sir, can you tell me again where I can get an axe?",
#         "nextPositiveSequence": "VC1S4-1B",
#         "nextNegativeSequence": "VC1S2-1B",
#         "resetChoice": "VC1S3-1B",
#         "character": "Illugi"
#     },
#     {
#         "id": "VC1S4-1B",
#         text: "Yes Warrior, my men had one found one lying on top of the ground the other day. Unfortunately they had pile some wood on top of it so if you like it you will need an axe to chop through the wood to get it.",
#         "btns": ["negative", "close"],
#         "negativeText": "Greetings again sir, can you tell me again where I can get an axe?",
#         "nextNegativeSequence": "VC1S2-1B",
#         "resetChoice": "VC1S3-1B",
#         "character": "Illugi"
#     },
#     {
#         "id": "VC1S0-0C",
#         text: "Greetings Warrior, how may I be of assistance",
#         "btns": ["positive", "negative", "close"],
#         "positiveText": "Greetings sir, I have a message for you from our Earl Erik the Red.",
#         "negativeText": "Greetings sir, have you seen any glowing orbs today?",
#         "close": "It is nice to meet you sir, have a good day.",
#         "nextPositiveSequence": "VC1S1-1C",
#         "nextNegativeSequence": "VC1S3-1C",
#         "resetChoice": "VC1S4-1C",
#         "positiveRequirement": "message",
#         "character": "ShipCaptain"
#     },
#     {
#         "id": "VC1S1-1C",
#         text: "Thank you warrior, please report back to the Earl that I have received it. How else can I be of assistance?",
#         "btns": ["negative", "close"],
#         "negativeText": "Greetings sir, have you seen any glowing orbs today?",
#         "close": "That is all sir thank you, have a good day.",
#         "resetChoice": "VC1S5-1C",
#         "nextNegativeSequence": "VC1S2-1C",
#         "character": "ShipCaptain",
#         "removeItem": "message"
#     },
#     {
#         "id": "VC1S2-1C",
#         text: "Yes I saw one near the edge of the river South of here. However, you probably need a net to pick it up from the water. You can grab one from Glaumur. He is in charge of supplies near the village center.",
#         "btns": ["close"],
#         "close": "Thank you again sir, have a good day.",
#         "resetChoice": "VC1S4-1C",
#         "positiveRequirement": "message",
#         "character": "ShipCaptain"
#     },
#     {
#         "id": "VC1S3-1C",
#         text: "Yes I saw one near the edge of the river South of here. However, you probably need a net to pick it up from the water. You can grab one from Glaumur. He is in charge of supplies near the village center.",
#         "btns": ["positive", "close"],
#         "positiveText": "Thank you sir, I also have a message for you from our Earl Erik the Red.",
#         "close": "Thank you again sir, have a good day.",
#         "resetChoice": "VC1S4-1C",
#         "nextPositiveSequence": "VC1S1-1C",
#         "positiveRequirement": "message",
#         "character": "ShipCaptain"
#     },
#     {
#         "id": "VC1S4-1C",
#         text: "Greetings again Warrior, how may I be of assistance",
#         "btns": ["positive", "negative", "close"],
#         "positiveText": "Greetings again sir, I have a message for you from our Earl Erik the Red.",
#         "negativeText": "Greetings again sir, have you seen any glowing orbs today?",
#         "close": "It is nice to meet you sir, have a good day.",
#         "nextPositiveSequence": "VC1S1-1C",
#         "nextNegativeSequence": "VC1S2-1C",
#         "positiveRequirement": "message",
#         "resetChoice": "VC1S4-1C",
#         "character": "ShipCaptain"
#     },
#     {
#         "id": "VC1S5-1C",
#         text: "Greetings again Warrior, how may I be of assistance",
#         "btns": ["negative", "close"],
#         "negativeText": "Greetings sir, have you seen any glowing orbs today?",
#         "close": "It is nice to meet you sir, have a good day.",
#         "nextNegativeSequence": "VC1S6-1C",
#         "resetChoice": "VC1S5-1C",
#         "character": "ShipCaptain"
#     },	
#     {
#         "id": "VC1S6-1C",
#         text: "Yes I saw one near the edge of the river South of here. However, you probably need a net to pick it up from the water. You can grab one from Glaumur. He is in charge of supplies near the village center.",
#         "btns": ["close"],
#         "close": "Thank you again sir, have a good day.",
#         "resetChoice": "VC1S5-1C",
#         "character": "ShipCaptain"
#     },			
#     {
#         "id": "VC1S0-0D",
#         text: "Greetings Warrior, how may I be of assistance",
#         "btns": ["positive", "negative", "close"],
#         "positiveText": "Greetings sir, may I have a net from you.",
#         "negativeText": "Greetings sir, have you seen any glowing orbs today?",
#         "close": "It is nice to meet you sir, have a good day.",
#         "nextPositiveSequence": "VC1S1-1D",
#         "nextNegativeSequence": "VC1S2-1D",
#         "resetChoice": "VC1S3-1D",
#         "character": "Glaumur"
#     },
#     {
#         "id": "VC1S1-1D",
#         text: "Certainly, here you go warrior.",
#         "btns": ["negative", "close"],
#         "negativeText": "Thank you sir, have you seen any glowing orbs today?",
#         "close": "It is nice to meet you again sir, have a good day.",
#         "nextNegativeSequence": "VC1S2-1D",
#         "itemGranted": "net",
#         "resetChoice": "VC1S3-1D",
#         "character": "Glaumur"
#     },
#     {
#         "id": "VC1S2-1D",
#         text: "Yes I have heard that Grettir and his band of traitors has found one to the North of the village near the forests. If you go to get it beware they may be hostile.",
#         "btns": ["positive", "close"],
#         "positiveText": "Greetings sir, may I have a net from you.",
#         "close": "Thank you for the info again sir, have a good day.",
#         "nextPositiveSequence": "VC1S1-1D",
#         "resetChoice": "VC1S0-0D",
#         "character": "Glaumur"
#     },
#     {
#         "id": "VC1S3-1D",
#         text: "Greetings Warrior, how may I be of assistance",
#         "btns": ["negative", "close"],
#         "negativeText": "Greetings sir, have you seen any glowing orbs today?",
#         "close": "It is nice to meet you sir, have a good day.",
#         "nextNegativeSequence": "VC1S4-1D",
#         "resetChoice": "VC1S3-1D",
#         "character": "Glaumur"
#     },
#     {
#         "id": "VC1S4-1D",
#         text: "Yes I have heard that Grettir and his band of traitors has found one to the North of the village near the forests. If you go to get it beware they may be hostile.",
#         "btns": ["close"],
#         "close": "Thank you for the info again sir, have a good day.",
#         "resetChoice": "VC1S3-1D",
#         "character": "Glaumur"
#     }
# ])