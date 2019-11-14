class CreateAttendedEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :attended_events do |t|
      t.integer :attendee_id
      t.integer :attended_event

      t.timestamps
    end
    add_index :attended_events, [:attendee_id, :attended_event], unique: true
  end
end
