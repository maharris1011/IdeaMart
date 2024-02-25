class RenameStatusToState < ActiveRecord::Migration[4.2]
  def change
    rename_column :ideas, :status, :state
  end
end
