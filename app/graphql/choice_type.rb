class ChoiceType < GraphQL::Schema::Object
  field :id, Integer, null: false
  field :text, String, null: true
  field :item_granted, String, null: true
  field :item_gone, String, null: true
  field :finish_task, String, null: true
  field :requirement, String, null: true
  field :choice_type, String, null: true
  field :contacts, [ContactType], null: true
  field :game_id, Integer, null: false
end
