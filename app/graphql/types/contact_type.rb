class Types::ContactType < GraphQL::Schema::Object
    graphql_name "Contact"

    field :id, ID, null: false
    field :text, String, null: false

    field :choices Types::ChoiceType do 
        resolve -> (obj, args, ctx) {
            obj.choices
        }
    end
end 