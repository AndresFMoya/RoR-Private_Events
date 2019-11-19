class CreateAttendedEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :attended_events do |t|
      t.integer :attendee_id
      t.integer :attended_event_id

      t.timestamps
    end
    add_index :attended_events, [:attendee_id, :attended_event_id], unique: true
  end
end
