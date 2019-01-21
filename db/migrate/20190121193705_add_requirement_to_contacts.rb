class AddRequirementToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :requirement, :string
  end
end
