class CreateRecipesTable < ActiveRecord::Migration[5.1]
  def change
    create_table(:recipes) do |r|
      r.text(:ingredients, array: true, default: [])
      r.column(:instructions, :string)
      r.column(:name, :string)

      r.timestamps
    end
  end
end
