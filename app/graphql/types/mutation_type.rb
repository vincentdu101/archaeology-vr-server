class Types::MutationType < GraphQL::Schema::Object
  field :createChoice, mutation: Mutations::CreateChoice
end