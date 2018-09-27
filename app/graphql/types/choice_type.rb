class Types::ChoiceType < GraphQL::Schema::Object
    graphql_name "Choice"

    field :id, ID, null: false
    field :text, String, null: false
    field :next_action, ID, null: true
    field :choice_type, String, null: false
end
