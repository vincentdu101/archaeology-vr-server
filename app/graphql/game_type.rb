class GameType < GraphQL::Schema::Object
  field :id, Integer, null: false
  field :title, String, null: true
  field :description, String, null: true
  field :choices, [ChoiceType], null: true
  field :contacts, [ContactType], null: true
end
