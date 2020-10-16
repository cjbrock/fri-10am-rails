class CreateAttendees < ActiveRecord::Migration[6.0]
  def change
    create_table :attendees do |t|
      t.string :name
      t.integer :age
      t.string :hometown
      t.belongs_to :event, null: false, foreign_key: true
      t.belongs_to :location, null: false, foreign_key: true
    end
  end
end
