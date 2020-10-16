class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.date :event_date
      t.string :event_type
      t.boolean :tickets
    end
  end
end
