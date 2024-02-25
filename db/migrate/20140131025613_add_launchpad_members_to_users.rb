class AddLaunchpadMembersToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :launchpad, :boolean
  end
end
