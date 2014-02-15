class Occupation < ActiveRecord::Base
  attr_accessible :label
  
  before_save :assign_guid
  before_destroy :destroy_associations
  
  has_many :characters_occupations
  has_many :characters,
    :through => :characters_occupations,
    :order => 'name'



private
  def assign_guid
    self.guid = SecureRandom.uuid unless self.guid
  end
  
  def destroy_associations
    self.characters_occupations.destroy_all
  end
end
