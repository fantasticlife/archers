class CreateMinorCharacters < ActiveRecord::Migration
  def change
    create_table :minor_characters do |t|

      t.timestamps
    end
  end
end
