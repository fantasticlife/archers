class ScriptLine < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :character
  belongs_to :scene
end
