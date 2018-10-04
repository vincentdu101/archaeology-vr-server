class CreateChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.string :text
      t.string :choice_type

      t.timestamps
    end
  end
end
