class CharacterName < ActiveRecord::Base
  attr_accessible :character_id, :old_name, :new_name, :date, :note, :known_as
  
  belongs_to :character
  
  def display_title
    if self.old_name
      "From #{self.old_name} to #{self.new_name}"
    else
      self.new_name
    end
  end
  
  def known_as_this
    if self.known_as
      'Known as this.'
    else
      'Not known as this.'
    end
  end
end
