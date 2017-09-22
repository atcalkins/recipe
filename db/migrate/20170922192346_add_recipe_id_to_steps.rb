class AddRecipeIdToSteps < ActiveRecord::Migration[5.1]
  def change
    add_column :steps, :recipe_id, :integer
    add_index :steps, :recipe_id
  end
end
