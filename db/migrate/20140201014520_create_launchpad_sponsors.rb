class CreateLaunchpadSponsors < ActiveRecord::Migration[4.2]
  def change
    create_table :launchpad_sponsors do |t|
      t.string :name
      t.string :area

      t.timestamps
    end
  end
end
