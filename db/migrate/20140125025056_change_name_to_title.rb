class ChangeNameToTitle < ActiveRecord::Migration[4.2]
  def change
    rename_column :ideas, :name, :title
  end
end
