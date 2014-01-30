class SceneAppearance < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :scene
  belongs_to :character
end
