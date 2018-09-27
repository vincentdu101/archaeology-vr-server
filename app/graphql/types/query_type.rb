class Types::QueryType < GraphQL::Schema::Object
  
  field :action, Types::ActionType, null: true do 
    argument :id, ID, required: true
  end

  def action(id:)
    Action.find(id)
  end 

  field :choice, Types::ChoiceType, null: true do
    argument :id, ID, required: true
  end 

  def choice(id:)
    Choice.find(id)
  end 

end 