class ChangeSponsorIdToUserId < ActiveRecord::Migration
  def change
  	rename_column :ideas, :sponsor_id, :user_id
  end
end
