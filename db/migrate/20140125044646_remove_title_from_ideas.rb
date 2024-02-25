class RemoveTitleFromIdeas < ActiveRecord::Migration[4.2]
  def change
    remove_column :ideas, :title
  end
end
