class Group < ActiveRecord::Base
  # attr_accessible :title, :body
  
  has_many :memberships
  
  def spouses
    Membership.find(
      :all,
      :select => 'm.*',
      :from => 'memberships m, membership_roles mr',
      :conditions => ["m.group_id = ? and m.membership_role_id = mr.id and mr.is_spouse = true", self]
    )
  end

  def nonspouses
    Membership.find(
      :all,
      :select => 'm.*',
      :from => 'memberships m, membership_roles mr',
      :conditions => ["m.group_id = ? and m.membership_role_id = mr.id and mr.is_spouse = false", self]
    )
  end
end
