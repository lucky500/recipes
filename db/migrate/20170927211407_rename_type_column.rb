class RenameTypeColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :tags, :type, :name
  end
end
