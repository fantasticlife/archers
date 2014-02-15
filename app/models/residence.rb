class Residence < ActiveRecord::Base
  attr_accessible :character_id, :place_id, :start_date, :end_date
  
  before_save :assign_guid
  
  belongs_to :character
  belongs_to :place
  
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



private
  def assign_guid
    self.guid = SecureRandom.uuid unless self.guid
  end
end
