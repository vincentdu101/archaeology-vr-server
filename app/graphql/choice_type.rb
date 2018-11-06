class ChoiceType < GraphQL::Schema::Object
  field :id, Integer, null: false
  field :text, String, null: true
  field :choice_type, String, null: true
  field :contacts, [ContactType], null: true
end
