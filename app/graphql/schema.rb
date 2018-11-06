class Schema < GraphQL::Schema
  query QueryType
end

# rails g graphql:object Contact id:Integer text:String choices:[Choice]
# rails g graphql:object Choice id:Integer text:String choice_type:String contacts:[Contact]

# remove types and follow getting started in graphql-ruby down to the t

# {
#   choice(id: 1) {
#     id
#     text
#     contacts {
#       text
#     }
#   }
# }

# {
#   contact(id: 1) {
#     id
#     text
#     choices {
#       id
#       text
#       choiceType
#       contacts {
#         id
#       }
#     } 
#   }
  
# }