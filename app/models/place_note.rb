class PlaceNote < ActiveRecord::Base
  attr_accessible :place_id, :date, :note
  
  belongs_to :place
end
