class Membership < ActiveRecord::Base
  attr_accessible :character_id, :group_id, :membership_role_id, :start_date, :end_date
  
  belongs_to :character
  belongs_to :group
  belongs_to :membership_role
  
  def dates
    display_dates = ''
    if self.start_date and self.end_date
      display_dates = "#{self.start_date.strftime( '%d %B %Y' )} - #{self.end_date.strftime( '%d %B %Y' )}"
    elsif self.start_date
      display_dates = "#{self.start_date.strftime( '%d %B %Y' )} -"
    elsif self.end_date
      display_dates = " - #{self.end_date.strftime( '%d %B %Y' )}"
    else
      display_dates = ''
    end
    display_dates
  end
end