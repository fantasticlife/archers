class CreateStorylines < ActiveRecord::Migration
  def change
    create_table :storylines do |t|

      t.timestamps
    end
  end
end
