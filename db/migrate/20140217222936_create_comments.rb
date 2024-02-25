class CreateComments < ActiveRecord::Migration[4.2]
  def change
    create_table :comments do |t|
      t.references :user, index: true
      t.references :idea, index: true
      t.text :description

      t.timestamps
    end
  end
end
