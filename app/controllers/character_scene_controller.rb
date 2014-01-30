class CharacterSceneController < ApplicationController

  def index
    character = params[:character]
    @character = Character.find( character )
    @page_title = "#{@character.name} - Scenes"
    @section = 'character'
  end
  
  def show
    character = params[:character]
    @character = Character.find( character )
    scene = params[:scene]
    @scene = Scene.find( scene )
    @page_title = "#{@character.name} - #{@scene.display_title_with_episode}"
    @section = 'character'
  end
end
