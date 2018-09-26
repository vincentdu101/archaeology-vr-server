class CreateChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.string :text
      t.string :next_action
      t.string :choice_type
      t.string :action_belongs_to

      t.timestamps
    end
  end
end
