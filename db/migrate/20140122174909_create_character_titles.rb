class CreateCharacterTitles < ActiveRecord::Migration
  def change
    create_table :character_titles do |t|

      t.timestamps
    end
  end
end
