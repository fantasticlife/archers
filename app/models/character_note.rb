class CharacterNote < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :character_id, :date, :note
  
  belongs_to :character
end
