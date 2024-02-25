class CreateVotes < ActiveRecord::Migration[4.2]
  def change
    create_table :votes do |t|
      t.references :user, index: true
      t.references :idea, index: true

      t.timestamps
    end
  end
end
