class CreateMajorCharacters < ActiveRecord::Migration
  def change
    create_table :major_characters do |t|

      t.timestamps
    end
  end
end
