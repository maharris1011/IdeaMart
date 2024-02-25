class ChangeSponsorsToAssociation < ActiveRecord::Migration[4.2]
  def change
    remove_column :ideas, :sponsor
    add_column :ideas, :sponsor, :integer
  end
end
