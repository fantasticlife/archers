class EpisodeController < ApplicationController
  
  def index
    @episodes = Episode.find( :all, 
      :order => 'tx_date, position'
    )
    @page_title = 'Episodes'
    @section = 'episode'
  end
  
  def show
    episode = params[:episode]
    @episode = Episode.find( episode )
    @page_title = @episode.display_title
    @section = 'episode'
  end
  
  def new
    @episode = Episode.new
    get_form_dependencies
    @page_title = "Add a new episode"
    @section = 'episode'
  end
  
  def create
    @episode = Episode.new( params[:episode] )
    if @episode.save
      flash[:notice] = "Episode created"
      redirect_to episode_show_url( :episode => @episode )
    else
      @page_title = "Add a new episode"
      @section = 'episode'
      get_form_dependencies
      render :action => 'new'
    end
  end
  
  def edit
    episode = params[:episode]
    @episode = Episode.find( episode )
    get_form_dependencies
    @page_title = "#{@episode.display_title} - Edit"
    @section = 'episode'
  end
  
  def update
    episode_to_update = params[:episode_to_update]
    @episode = Episode.find( episode_to_update )
    if @episode.update_attributes( params[:episode] )
      flash[:notice] = "Episode details updated"
      redirect_to episode_show_url( :episode => @episode )
    else
      @page_title = "#{@episode.tx_date.strftime( DATE_FORMAT )} - Edit"
      @section = 'episode'
      get_form_dependencies
      render( :action => 'edit' )
    end
  end

  def delete
    episode = params[:episode]
    @episode = Episode.find( episode )
    @episode.destroy
    flash[:notice] = "Episode deleted"
    redirect_to episode_list_url
  end
  
  
  
private
  def get_form_dependencies
    @crew = Crew.find(
      :all,
      :order => 'given_name, family_name'
    )
  end
end
