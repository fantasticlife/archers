class RelationshipReveal < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :relationship
  belongs_to :scene
end
