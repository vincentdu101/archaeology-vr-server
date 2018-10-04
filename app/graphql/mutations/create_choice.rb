class Mutations::CreateChoice < GraphQL::Schema::RelayClassicMutation
    argument :text, String, required: true
    argument :choice_type, String, required: true

    field :choice, Types::ChoiceType, null: true

    def resolve(text:, next_action:, choice_type:)
        choice = Choice.create(
            text: text,
            choice_type: choice_type
        )

        {
            choice: choice.valid ? choice : nil
        }
    end 

end 