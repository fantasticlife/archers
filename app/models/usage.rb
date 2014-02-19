class Usage < ActiveRecord::Base
  # attr_accessible :title, :body
  
  # legacy relationship for migrating dr who
  belongs_to :event
  
  belongs_to :scene
  belongs_to :artefact
end
