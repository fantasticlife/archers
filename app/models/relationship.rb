class Relationship < ActiveRecord::Base
  attr_accessible :from_character_id, :relationship_type_id, :to_character_id
  
  attr_accessor :source_id, :target_id, :source_index, :target_index, :value
  
  before_destroy :destroy_associations
  
  belongs_to :relationship_type
  has_many :relationship_reveals
  
  def from_character
    Character.find( self.from_character_id )
  end

  def to_character
    Character.find( self.to_character_id )
  end
  
  def full_label
    "#{self.from_character.name} #{self.relationship_type.label.downcase} #{self.to_character.name}" 
  end



private
  def destroy_associations
    self.relationship_reveals.destroy_all
  end
end
