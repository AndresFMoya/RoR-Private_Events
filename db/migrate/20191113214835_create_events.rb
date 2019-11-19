class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.datetime :date
      t.text :description
      t.integer :creator_id, null:false

      t.timestamps
    end
    add_index :events, [:creator_id, :created_at]
  end
end
