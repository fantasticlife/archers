class Location < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :scene
  belongs_to :place
end
