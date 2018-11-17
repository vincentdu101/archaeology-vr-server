class AddCharacterTypeToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :character_type, :string
  end
end
