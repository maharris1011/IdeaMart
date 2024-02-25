class AddPivotalTrackerUrlToIdea < ActiveRecord::Migration[4.2]
  def change
    add_column :ideas, :pivotal_url, :string
  end
end
