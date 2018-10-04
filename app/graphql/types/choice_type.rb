class Types::ChoiceType < GraphQL::Schema::Object
    graphql_name "Choice"

    field :id, ID, null: false
    field :text, String, null: false
    field :choice_type, String, null: false

    field :contacts Types::ContactType do 
        resolve -> (obj, args, ctx) {
            obj.contacts
        }
    end
end
