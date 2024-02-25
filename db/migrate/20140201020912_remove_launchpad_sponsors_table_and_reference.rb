class RemoveLaunchpadSponsorsTableAndReference < ActiveRecord::Migration[4.2]
  def change
    drop_table :launchpad_sponsors
  end
end
