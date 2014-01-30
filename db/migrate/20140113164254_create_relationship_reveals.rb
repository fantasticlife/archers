class CreateRelationshipReveals < ActiveRecord::Migration
  def change
    create_table :relationship_reveals do |t|

      t.timestamps
    end
  end
end
