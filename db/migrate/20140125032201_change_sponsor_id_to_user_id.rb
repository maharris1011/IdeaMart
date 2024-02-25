class ChangeSponsorIdToUserId < ActiveRecord::Migration[4.2]
  def change
    rename_column :ideas, :sponsor_id, :user_id
  end
end
