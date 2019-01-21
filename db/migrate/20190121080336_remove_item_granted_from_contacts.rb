class RemoveItemGrantedFromContacts < ActiveRecord::Migration[5.2]
  def change
    remove_column :contacts, :item_granted, :string
  end
end
