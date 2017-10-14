class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |attendee|
      attendee.integer :user_id, null: false
      attendee.integer :meetup_id, null: false

      attendee.timestamps null: false
    end
    add_index :attendees, [:user_id, :meetup_id], unique: true
  end
end
