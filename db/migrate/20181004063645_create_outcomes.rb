class CreateOutcomes < ActiveRecord::Migration[5.2]
  def change
    create_table :outcomes do |t|
      t.references :contact, foreign_key: true
      t.references :choice, foreign_key: true

      t.timestamps
    end
  end
end
