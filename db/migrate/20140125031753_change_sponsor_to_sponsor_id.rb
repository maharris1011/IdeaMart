class ChangeSponsorToSponsorId < ActiveRecord::Migration
  def change
    rename_column :ideas, :sponsor, :sponsor_id
  end
end
