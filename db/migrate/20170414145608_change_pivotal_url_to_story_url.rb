class ChangePivotalUrlToStoryUrl < ActiveRecord::Migration[6.0]
  def change
    rename_column :ideas, :pivotal_url, :story_url
  end
end
