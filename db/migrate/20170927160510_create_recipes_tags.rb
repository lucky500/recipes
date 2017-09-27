class CreateRecipesTags < ActiveRecord::Migration[5.1]
  def change
    create_table(:recipes_tags) do |r|
      r.column(:recipe_id, :integer)
      r.column(:tag_id, :integer)

      r.timestamps
    end
  end
end
