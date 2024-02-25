class AddLaunchpadSponsorReferenceToIdeas < ActiveRecord::Migration[4.2]
  def change
    add_reference :ideas, :launchpad_sponsor, index: true
  end
end
