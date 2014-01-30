class MinorCharacter < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :character
  belongs_to :storyline
end
