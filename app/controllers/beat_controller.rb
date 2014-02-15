class BeatController < ApplicationController

  def index
    storyline = params[:storyline]
    @storyline = Storyline.find_by_guid( storyline )
    @page_title = "#{@storyline.title} - Beats"
    @section = 'storyline'
  end
  def show
    storyline = params[:storyline]
    @storyline = Storyline.find_by_guid( storyline )
    beat = params[:beat]
    @beat = Beat.find_by_guid( beat )
    @page_title = "#{@storyline.title} - Beat"
    @section = 'storyline'
  end
  def new
    storyline = params[:storyline]
    @storyline = Storyline.find_by_guid( storyline )
    @beat = Beat.new
    @beat.storyline = @storyline
    @page_title = "Add a new beat"
    @section = 'storyline'
  end
  def create
    storyline = params[:storyline]
    @storyline = Storyline.find_by_guid( storyline )
    @beat = Beat.new( params[:beat] )
    if @beat.save
      flash[:notice] = "Beat created"
      redirect_to storyline_show_url( :storyline => @storyline.guid )
    else
      @page_title = "Add a new beat"
      @section = 'storyline'
      render :action => 'new'
    end
  end
  def edit
    storyline = params[:storyline]
    @storyline = Storyline.find_by_guid( storyline )
    beat = params[:beat]
    @beat = Beat.find_by_guid( beat )
    @page_title = "#{@storyline.title} - Edit beat"
    @section = 'storyline'
  end
  def update
    storyline = params[:storyline]
    @storyline = Storyline.find_by_guid( storyline )
    beat_to_update = params[:beat_to_update]
    @beat = Beat.find_by_guid( beat_to_update )
    if @beat.update_attributes( params[:beat] )
      flash[:notice] = "Beat details updated"
      redirect_to storyline_show_url( :storyline => @storyline.guid )
    else
      @page_title = "#{@storyline.title} - Edit beat"
      @section = 'storyline'
      render( :action => 'edit' )
    end
  end
  def delete
    storyline = params[:storyline]
    @storyline = Storyline.find_by_guid( storyline )
    beat = params[:beat]
    @beat = Beat.find_by_guid( beat )
    @beat.destroy
    flash[:notice] = "Beat deleted"
    redirect_to storyline_show_url
  end
end
