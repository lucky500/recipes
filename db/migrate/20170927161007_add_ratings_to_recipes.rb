class AddRatingsToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column(:recipes, :rating, :integer)
  end
end
