class AddLeanCanvasStuffToIdeas < ActiveRecord::Migration[4.2]
  def change
    change_table :ideas do |t|
      t.column :problem, :text
      t.column :unique_value_prop, :text
      t.column :unfair_advantage, :text
      t.column :early_adopters, :text
      t.column :existing_alternatives, :text
      t.column :key_metrics, :text
      t.column :high_level_concept, :string
      t.column :channels, :text
      t.column :cost_structure, :text
      t.column :revenue_streams, :text
      t.column :customer_segments, :text
    end
  end
end
