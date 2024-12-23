class ChangeTypeToNameForTag < ActiveRecord::Migration[6.1]
  def change
    rename_column :tags, :type, :name
  end
end
