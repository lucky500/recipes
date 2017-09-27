class CreateTagsTable < ActiveRecord::Migration[5.1]
  def change
    create_table(:tags) do |t|
      t.column(:type, :string)

      t.timestamps
    end
  end
end
