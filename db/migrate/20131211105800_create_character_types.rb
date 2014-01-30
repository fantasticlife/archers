class CreateCharacterTypes < ActiveRecord::Migration
  def change
    create_table :character_types do |t|

      t.timestamps
    end
  end
end
