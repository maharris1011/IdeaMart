class ChangeNameToTitle < ActiveRecord::Migration
  def change
    rename_column :ideas, :name, :title
  end
end
