Types::QueryType = GraphQL::ObjectType.define do 

  name "Query"

  field :allActions do
    type types[Types::ActionType] 
    description "A list of all the actions"

    resolve -> (obj, args, ctx) {
      Action.all
    }
  end

end 

