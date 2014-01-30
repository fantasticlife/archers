class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|

      t.timestamps
    end
  end
end
