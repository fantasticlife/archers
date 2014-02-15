class CharacterNote < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :character_id, :date, :note
  
  before_save :assign_guid
  
  belongs_to :character



private
  def assign_guid
    self.guid = SecureRandom.uuid unless self.guid
  end
end
