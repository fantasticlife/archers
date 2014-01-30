class CreateCrossSceneEventReferences < ActiveRecord::Migration
  def change
    create_table :cross_scene_event_references do |t|

      t.timestamps
    end
  end
end
