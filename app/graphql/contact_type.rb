class ContactType < GraphQL::Schema::Object
  field :id, Integer, null: false
  field :text, String, null: true
  field :choices, [ChoiceType], null: true
end
