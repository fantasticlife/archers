class EpisodeSceneController < ApplicationController
  
  def index
    episode = params[:episode]
    @episode = Episode.find( episode )
    @page_title = "#{@episode.display_title} - Scenes"
    @section = 'episode'
  end
  
  def new
    episode = params[:episode]
    @episode = Episode.find( episode )
    @scene = Scene.new
    @scene.episode = @episode
    get_form_dependencies
    @page_title = "#{@episode.display_title} - New scene"
    @section = 'episode'
  end



private
  def get_form_dependencies
    @storylines = Storyline.find(
      :all,
      :order => 'title'
    )
    @characters = Character.find(
      :all,
      :order => 'name'
    )
    @places = Place.find(
      :all,
      :order => 'title'
    )
    @relationships = Relationship.find(
      :all,
      :order => 'created_at'
    )
  end
end
