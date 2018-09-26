Types::ChoiceType = GraphQL::ObjectType.define do
    name "Choice"

    field :id, types.ID
    field :text, types.String
    field :sequence, types.String
    field :choice_type, types.String

end
