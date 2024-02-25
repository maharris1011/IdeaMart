class ChangeIdeaDescriptionToSolution < ActiveRecord::Migration[4.2]
  def change
    rename_column :ideas, :description, :solution
  end
end
