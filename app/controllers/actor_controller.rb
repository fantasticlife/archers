class ActorController < ApplicationController

  def index
    @actors = Actor.find( :all, 
      :order => 'given_name, middle_name, family_name'
    )
    @page_title = 'Actors'
    @section = 'actor'
  end

  def show
    actor = params[:actor]
    @actor = Actor.find( actor )
    @page_title = @actor.name
    @section = 'actor'
  end

  def new
    @actor = Actor.new
    @page_title = "Add a new actor"
    @section = 'actor'
  end

  def create
    @actor = Actor.new( params[:actor] )
    if @actor.save
      flash[:notice] = "Actor created"
      redirect_to actor_show_url( :actor => @actor )
    else
      @page_title = "Add a new actor"
      @section = 'actor'
      render :action => 'new'
    end
  end

  def edit
    actor = params[:actor]
    @actor = Actor.find( actor )
    @page_title = "#{@actor.name} - Edit"
    @section = 'actor'
  end

  def update
    actor = params[:actor_to_update]
    @actor = Actor.find( actor )
    if @actor.update_attributes( params[:actor] )
      flash[:notice] = "Actor details updated"
      redirect_to actor_show_url( :actor => @actor )
    else
      @page_title = "#{@actor.name} - Edit"
      @section = 'actor'
      render( :action => 'edit' )
    end
  end

  def delete
    actor = params[:actor]
    @actor = Actor.find( actor )
    @actor.destroy
    flash[:notice] = "Actor deleted"
    redirect_to actor_list_url
  end
end
