class CreateMembershipRoles < ActiveRecord::Migration
  def change
    create_table :membership_roles do |t|

      t.timestamps
    end
  end
end
