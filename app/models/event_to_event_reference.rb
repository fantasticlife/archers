class EventToEventReference < ActiveRecord::Base
  # attr_accessible :title, :body
  
  # temp methods for munging dr who data
  def from_event
    Event.find( 
      :first,
      :conditions => ["id = ?", self.from_event_id]
    )
  end
  
  def to_event
    Event.find( 
      :first,
      :conditions => ["id = ?", self.to_event_id]
    )
  end
end
