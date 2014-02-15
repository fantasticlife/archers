class UniverseTleo < ActiveRecord::Base
  attr_accessible :fictional_universe_id, :title, :pid
  
  before_save :assign_guid
  
  belongs_to :fictional_universe



private
  def assign_guid
    self.guid = SecureRandom.uuid unless self.guid
  end
end
