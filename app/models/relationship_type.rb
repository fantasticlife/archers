class RelationshipType < ActiveRecord::Base
  attr_accessible :label
  
  before_save :assign_guid
  before_destroy :destroy_associations
  
  has_many :relationships
  
  validates :label, presence: true, length: {maximum: 255, :message => 'must be 255 characters or less' }
  
  
  
private
  def assign_guid
    self.guid = SecureRandom.uuid unless self.guid
  end
  
  def destroy_associations
    self.relationships.destroy_all
  end
end
