class AddPivotalTrackerUrlToIdea < ActiveRecord::Migration
  def change
    add_column :ideas, :pivotal_url, :string
  end
end
