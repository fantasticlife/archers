class Casting < ActiveRecord::Base
  attr_accessible :character_id, :actor_id, :start_date, :end_date
  
  before_save :assign_guid
  
  belongs_to :actor
  belongs_to :character
  
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



private
  def assign_guid
    self.guid = SecureRandom.uuid unless self.guid
  end
end
