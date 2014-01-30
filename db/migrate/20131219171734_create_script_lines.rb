class CreateScriptLines < ActiveRecord::Migration
  def change
    create_table :script_lines do |t|

      t.timestamps
    end
  end
end
