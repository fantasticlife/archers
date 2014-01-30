class CreateSceneAppearances < ActiveRecord::Migration
  def change
    create_table :scene_appearances do |t|

      t.timestamps
    end
  end
end
