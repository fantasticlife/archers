class UniverseController < ApplicationController
  
  def index
    @universe = FictionalUniverse.find( :first )
    @page_title = 'About'
    @section = 'universe'
  end
  
  def show
    universe = params[:universe]
    @universe = FictionalUniverse.find_by_guid( universe )
    @page_title = "#{@universe.title}"
    @section = 'universe'
  end
  
  def new
    @universe = FictionalUniverse.new
    @page_title = 'Add universe details'
    @section = 'universe'
  end
  
  def create
    @universe = FictionalUniverse.new( params[:fictional_universe] )
    if @universe.save
      flash[:notice] = "Universe created"
      redirect_to universe_list_url
    else
      @page_title = 'Add universe details'
      @section = 'universe'
      render :action => 'new'
    end
  end
  
  def edit
    universe = params[:universe]
    @universe = FictionalUniverse.find_by_guid( universe )
    @page_title = "#{@universe.title} - Edit"
    @section = 'universe'
  end
  
  def update
    universe = params[:universe_to_update]
    @universe = FictionalUniverse.find_by_guid( universe )
    if @universe.update_attributes( params[:fictional_universe] )
      flash[:notice] = "Universe details updated"
      redirect_to universe_list_url
    else
      @page_title = "#{@universe.tile} - Edit"
      @section = 'universe'
      render( :action => 'edit' )
    end
  end
end
