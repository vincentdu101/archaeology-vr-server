class ContactType < GraphQL::Schema::Object
  field :id, Integer, null: false
  field :text, String, null: true
  field :choices, [ChoiceType], null: true
  field :character_type, String, null: true
  field :hierarchy, Integer, null: true
  field :game_id, Integer, null: false
end
