class AddUpDownVoteToVotes < ActiveRecord::Migration
  def change
  	add_column :votes, :score, :integer
  end
end
