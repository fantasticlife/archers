class CreateCharactersOccupations < ActiveRecord::Migration
  def change
    create_table :characters_occupations do |t|

      t.timestamps
    end
  end
end
