class AddPreparationTimeToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :preparation_time, :string
    add_column :recipes, :cost, :decimal
  end
end
