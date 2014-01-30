class CreateCharacterNotes < ActiveRecord::Migration
  def change
    create_table :character_notes do |t|

      t.timestamps
    end
  end
end
