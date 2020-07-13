class RemoveLaunchpadSponsorsTableAndReference < ActiveRecord::Migration
  def change
    drop_table :launchpad_sponsors
  end
end
