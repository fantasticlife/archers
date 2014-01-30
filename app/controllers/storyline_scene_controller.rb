class StorylineSceneController < ApplicationController
  
  def index
    storyline = params[:storyline]
    @storyline = Storyline.find( storyline )
    @page_title = "#{@storyline.title} - Scenes"
    @section = 'storyline'
  end
  
  def show
    storyline = params[:storyline]
    @storyline = Storyline.find( storyline )
    scene = params[:scene]
    @scene = Scene.find( scene )
    @page_title = "#{@storyline.title} - #{@scene.display_title_with_episode}"
    @section = 'storyline'
  end
end
