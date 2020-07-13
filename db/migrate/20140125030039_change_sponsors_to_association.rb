class ChangeSponsorsToAssociation < ActiveRecord::Migration
  def change
    remove_column :ideas, :sponsor
    add_column :ideas, :sponsor, :integer
  end
end
