class CreateRelationshipTypes < ActiveRecord::Migration
  def change
    create_table :relationship_types do |t|

      t.timestamps
    end
  end
end
