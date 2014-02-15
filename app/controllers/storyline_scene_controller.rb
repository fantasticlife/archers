class StorylineSceneController < ApplicationController
  
  def index
    storyline = params[:storyline]
    @storyline = Storyline.find_by_guid( storyline )
    @page_title = "#{@storyline.title} - Scenes"
    @section = 'storyline'
  end
  def show
    storyline = params[:storyline]
    @storyline = Storyline.find_by_guid( storyline )
    scene = params[:scene]
    @scene = Scene.find_by_guid( scene )
    @page_title = "#{@storyline.title} - #{@scene.display_title_with_episode}"
    @section = 'storyline'
  end
end
