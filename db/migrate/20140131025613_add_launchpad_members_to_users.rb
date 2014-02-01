class AddLaunchpadMembersToUsers < ActiveRecord::Migration
  def change
    add_column :users, :launchpad, :boolean
  end
end
