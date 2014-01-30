class EventLocation < ActiveRecord::Base
  # attr_accessible :title, :body
  
  # fake model for doctor who migrations
  belongs_to :event
  belongs_to :place
end
