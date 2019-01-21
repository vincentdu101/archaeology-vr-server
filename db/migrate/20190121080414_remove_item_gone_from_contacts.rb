class RemoveItemGoneFromContacts < ActiveRecord::Migration[5.2]
  def change
    remove_column :contacts, :item_gone, :string
  end
end
