class Membership < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :character
  belongs_to :group
  belongs_to :membership_role
  
  def display_dates
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