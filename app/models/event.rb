class Event < ActiveRecord::Base
  # attr_accessible :title, :body
  
  # fake model for doctor who migrations
  has_many :scenes
end
