class AddStatusToIdeas < ActiveRecord::Migration[4.2]
  def change
    add_column :ideas, :status, :string
  end
end
