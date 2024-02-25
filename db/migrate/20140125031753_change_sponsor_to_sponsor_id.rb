class ChangeSponsorToSponsorId < ActiveRecord::Migration[4.2]
  def change
    rename_column :ideas, :sponsor, :sponsor_id
  end
end
