Types::ActionType = GraphQL::ObjectType.define do
    name "Action"

    field :id, !types.ID
    field :text, !types.String
    field :choices do 
        type types[Types::ChoiceType]
        resolve -> (obj, args, ctx) {
            obj.choices
        }
    end
end 