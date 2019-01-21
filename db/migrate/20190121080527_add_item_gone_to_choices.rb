class AddItemGoneToChoices < ActiveRecord::Migration[5.2]
  def change
    add_column :choices, :item_gone, :string
  end
end
