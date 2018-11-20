class QueryType < GraphQL::Schema::Object
    description "The query root of this schema"
  
    # First describe the field signature:
    field :choice, ChoiceType, null: true do
      description "Find a choice by ID"
      argument :id, ID, required: true
    end

    field :contact, ContactType, null: true do 
      description "Find a contact by ID"
      argument :id, ID, required: true
    end

    field :game, GameType, null: true do 
      description "Find a contact by ID"
      argument :id, ID, required: true
    end
  
    # Then provide an implementation:
    def choice(id:)
      Choice.find(id)
    end

    def contact(id:)
      Contact.find(id)
    end 

  end