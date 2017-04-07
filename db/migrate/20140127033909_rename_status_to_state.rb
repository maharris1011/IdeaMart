class RenameStatusToState < ActiveRecord::Migration
  def change
    rename_column :ideas, :status, :state
  end
end
