class AddRequirementToChoices < ActiveRecord::Migration[5.2]
  def change
    add_column :choices, :requirement, :string
  end
end
