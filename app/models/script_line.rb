class ScriptLine < ActiveRecord::Base
  # attr_accessible :title, :body
  
  before_save :assign_guid
  
  belongs_to :character
  belongs_to :scene
  
  
  
private
  def assign_guid
    self.guid = SecureRandom.uuid unless self.guid
  end
end
