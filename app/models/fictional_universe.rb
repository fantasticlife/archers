class FictionalUniverse < ActiveRecord::Base
  attr_accessible :title, :short_synopsis, :years_from_now
  
  before_save :assign_guid
  
  has_many :universe_tleos



private
  def assign_guid
    self.guid = SecureRandom.uuid unless self.guid
  end
end
