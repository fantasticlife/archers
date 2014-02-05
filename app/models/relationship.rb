class Relationship < ActiveRecord::Base
  attr_accessible :from_character_id, :relationship_type_id, :to_character_id, :start_date, :end_date
  
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
  
  def display_label
    "#{self.from_character.name} #{self.relationship_type.label.downcase} to #{self.to_character.name}" 
  end

  def dates
    dates = ''
    if self.start_date and self.end_date
      dates = dates + self.start_date.strftime( '%d %B %Y' ) + ' - ' + self.end_date.strftime( '%d %B %Y' )
    elsif self.start_date
      dates = dates + self.start_date.strftime( '%d %B %Y' ) + ' - '
    elsif self.end_date
      dates = dates + ' - ' + self.end_date.strftime( '%d %B %Y' )
    end
    dates
  end



private
  def destroy_associations
    self.relationship_reveals.destroy_all
  end
end
