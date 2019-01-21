class AddFinishTaskToChoices < ActiveRecord::Migration[5.2]
  def change
    add_column :choices, :finish_task, :string
  end
end
