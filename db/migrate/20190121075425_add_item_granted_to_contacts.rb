class AddItemGrantedToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :item_granted, :string
  end
end
