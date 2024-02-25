class AddUpDownVoteToVotes < ActiveRecord::Migration[4.2]
  def change
    add_column :votes, :score, :integer
  end
end
