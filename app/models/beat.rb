class Beat < ActiveRecord::Base
  attr_accessible :storyline_id, :date, :note
  
  before_save :assign_guid
  
  belongs_to :storyline
  
  
  
private
  def assign_guid
    self.guid = SecureRandom.uuid unless self.guid
  end
end
