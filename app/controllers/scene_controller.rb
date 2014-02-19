class SceneController < ApplicationController
  
  def index
    @scenes = Scene.find( :all, 
      :conditions => 'parent_id is null',
      :order => 'id' # TODO add proper ordering?
    )
    @page_title = 'Scenes'
    @section = 'episode'
  end
  def show
    scene = params[:scene]
    @scene = Scene.find_by_guid( scene )
    @page_title = @scene.display_title_with_episode
    @section = 'episode'
  end
  def new
    @scene = Scene.new
    get_form_dependencies
    @page_title = "Add a new scene"
    @section = 'episode'
  end
  def create
    @scene = Scene.new( params[:scene] )
    if @scene.save
      flash[:notice] = "Scene created"
      redirect_to scene_show_url( :scene => @scene.guid )
    else
      @page_title = "Add a new scene"
      @section = 'episode'
      get_form_dependencies
      render :action => 'new'
    end
  end
  def edit
    scene = params[:scene]
    @scene = Scene.find_by_guid( scene )
    get_form_dependencies
    @page_title = "#{@scene.display_title_with_episode} - Edit"
    @section = 'episode'
  end
  def update
    scene_to_update = params[:scene_to_update]
    @scene = Scene.find_by_guid( scene_to_update )
    if @scene.update_attributes( params[:scene] )
      flash[:notice] = "Scene details updated"
      redirect_to scene_show_url( :scene => @scene.guid )
    else
      @page_title = "#{@scene.display_title_with_episode} - Edit"
      @section = 'episode'
      get_form_dependencies
      render( :action => 'edit' )
    end
  end
  def delete
    scene = params[:scene]
    @scene = Scene.find_by_guid( scene )
    @scene.destroy
    flash[:notice] = "Scene deleted"
    redirect_to scene_list_url
  end
  
  
  
private
  def get_form_dependencies
    @episodes = Episode.find( 
      :all,
      :order => 'tx_date desc'
    )
    @storylines = Storyline.find(
      :all,
      :order => 'title'
    )
    @characters = Character.find(
      :all,
      :order => 'name'
    )
    @artefacts = Artefact.find( 
      :all,
      :order => 'title'
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
