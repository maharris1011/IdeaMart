class ChangePivotalUrlToStoryUrl < ActiveRecord::Migration
  def change
    rename_column :ideas, :pivotal_url, :story_url
  end
end
