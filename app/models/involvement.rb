class Involvement < ActiveRecord::Base
  # attr_accessible :title, :body
  
  # old relationship for dr who munging
  belongs_to :event
  
  belongs_to :scene
  belongs_to :character
end
