class Appearance < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :beat
  belongs_to :character
end
