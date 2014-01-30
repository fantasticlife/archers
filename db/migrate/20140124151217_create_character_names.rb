class CreateCharacterNames < ActiveRecord::Migration
  def change
    create_table :character_names do |t|

      t.timestamps
    end
  end
end
