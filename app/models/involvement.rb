class Involvement < ActiveRecord::Base
  # attr_accessible :title, :body
  
  before_save :assign_guid
  
  # old relationship for dr who munging
  belongs_to :event
  
  belongs_to :scene
  belongs_to :character



private
  def assign_guid
    self.guid = SecureRandom.uuid unless self.guid
  end
end
