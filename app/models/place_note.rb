class PlaceNote < ActiveRecord::Base
  attr_accessible :place_id, :date, :note
  
  before_save :assign_guid
  
  belongs_to :place
  
  
  
private
  def assign_guid
    self.guid = SecureRandom.uuid unless self.guid
  end
end
