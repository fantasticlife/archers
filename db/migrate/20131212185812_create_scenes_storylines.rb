class CreateScenesStorylines < ActiveRecord::Migration
  def change
    create_table :scenes_storylines do |t|

      t.timestamps
    end
  end
end
