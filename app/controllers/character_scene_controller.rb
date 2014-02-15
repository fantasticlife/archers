class CharacterSceneController < ApplicationController

  def index
    character = params[:character]
    @character = Character.find_by_guid( character )
    @page_title = "#{@character.name} - Scenes"
    @section = 'character'
  end
  def show
    character = params[:character]
    @character = Character.find_by_guid( character )
    scene = params[:scene]
    @scene = Scene.find_by_guid( scene )
    @page_title = "#{@character.name} - #{@scene.display_title_with_episode}"
    @section = 'character'
  end
end
