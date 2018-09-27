class Types::ActionType < GraphQL::Schema::Object
    graphql_name "Action"

    field :id, ID, null: false
    field :text, String, null: false
    field :choices, [Types::ChoiceType], null: true
end 