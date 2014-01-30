class RelationshipType < ActiveRecord::Base
  attr_accessible :label
  
  before_destroy :destroy_associations
  
  has_many :relationships
  
  validates :label, presence: true, length: {maximum: 255, :message => 'must be 255 characters or less' }
  
  
  
private
  def destroy_associations
    self.relationships.destroy_all
  end
end
