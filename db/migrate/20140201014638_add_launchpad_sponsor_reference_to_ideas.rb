class AddLaunchpadSponsorReferenceToIdeas < ActiveRecord::Migration
  def change
    add_reference :ideas, :launchpad_sponsor, index: true
  end
end
