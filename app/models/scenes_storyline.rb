class ScenesStoryline < ActiveRecord::Base
  # attr_accessible :title, :body
  
  # fake association for doctor who migrations
  belongs_to :event
  
  belongs_to :storyline
  belongs_to :scene
end
