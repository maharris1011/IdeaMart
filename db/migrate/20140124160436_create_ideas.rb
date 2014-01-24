class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :name
      t.string :sponsor
      t.text :description

      t.timestamps
    end
  end
end
