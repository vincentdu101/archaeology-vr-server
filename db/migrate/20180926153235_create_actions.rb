class CreateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :actions do |t|
      t.string :text
      t.string :choices

      t.timestamps
    end
  end
end
