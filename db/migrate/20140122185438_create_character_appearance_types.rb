class CreateCharacterAppearanceTypes < ActiveRecord::Migration
  def change
    create_table :character_appearance_types do |t|

      t.timestamps
    end
  end
end
