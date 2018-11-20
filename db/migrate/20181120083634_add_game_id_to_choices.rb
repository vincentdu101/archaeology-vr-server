class AddGameIdToChoices < ActiveRecord::Migration[5.2]
  def change
    add_column :choices, :game_id, :integer
  end
end
