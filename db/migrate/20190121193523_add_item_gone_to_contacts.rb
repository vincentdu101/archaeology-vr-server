class AddItemGoneToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :item_gone, :string
  end
end
