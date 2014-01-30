class CreateEventLocations < ActiveRecord::Migration
  def change
    create_table :event_locations do |t|

      t.timestamps
    end
  end
end
