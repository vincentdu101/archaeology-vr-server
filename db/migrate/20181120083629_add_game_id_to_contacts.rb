class AddGameIdToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :game_id, :integer
  end
end
