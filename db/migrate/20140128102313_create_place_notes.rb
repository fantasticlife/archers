class CreatePlaceNotes < ActiveRecord::Migration
  def change
    create_table :place_notes do |t|

      t.timestamps
    end
  end
end
