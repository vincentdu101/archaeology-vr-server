class AddFinishTaskToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :finish_task, :string
  end
end
