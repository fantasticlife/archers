class Beat < ActiveRecord::Base
  attr_accessible :storyline_id, :date, :note
  
  belongs_to :storyline
end
