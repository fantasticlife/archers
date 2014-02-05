class Group < ActiveRecord::Base
  attr_accessible :label, :start_date, :end_date, :note
  
  before_destroy :destroy_associations
  
  has_many :memberships

  def dates
    dates = ''
    if self.start_date and self.end_date
      dates = dates + self.start_date.strftime( '%d %B %Y' ) + ' - ' + self.end_date.strftime( '%d %B %Y' )
    elsif self.start_date
      dates = dates + self.start_date.strftime( '%d %B %Y' ) + ' - '
    elsif self.end_date
      dates = dates + ' - ' + self.end_date.strftime( '%d %B %Y' )
    end
    dates
  end
  
  # helpers for migrations
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



private
  def destroy_associations
    self.memberships.destroy_all
  end
end
