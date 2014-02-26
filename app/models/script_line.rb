class ScriptLine < ActiveRecord::Base
  attr_accessible :scene_id, :line_type, :line, :character_id, :position
  
  before_save :assign_guid
  
  belongs_to :character
  belongs_to :scene
  
  
  
private
  def assign_guid
    self.guid = SecureRandom.uuid unless self.guid
  end
end
