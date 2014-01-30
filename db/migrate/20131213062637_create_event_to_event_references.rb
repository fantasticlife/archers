class CreateEventToEventReferences < ActiveRecord::Migration
  def change
    create_table :event_to_event_references do |t|

      t.timestamps
    end
  end
end
