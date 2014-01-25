class ChangeIdeaDescriptionToSolution < ActiveRecord::Migration
  def change
  	rename_column :ideas, :description, :solution 
  end
end
