class AddHierarchyToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :hierarchy, :integer
  end
end
