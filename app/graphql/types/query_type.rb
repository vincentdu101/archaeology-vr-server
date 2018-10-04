class Types::QueryType < GraphQL::Schema::Object
  
  field :contact, Types::ContactType, null: true do 
    argument :id, ID, required: true
  end

  def contact(id:)
    Contact.find(id)
  end 

  field :choice, Types::ChoiceType, null: true do
    argument :id, ID, required: true
  end 

  def choice(id:)
    Choice.find(id)
  end 

end 