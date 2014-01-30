class PlaceController < ApplicationController
  
  def index
    @places = Place.find( :all, 
      :order => 'title'
    )
    @page_title = 'Places'
    @section = 'place'
  end

  def show
    place = params[:place]
    @place = Place.find( place )
    @page_title = @place.title
    @section = 'place'
  end
  
  def new
    @place = Place.new
    get_form_dependencies
    @page_title = "Add a new place"
    @section = 'place'
  end
  
  def create
    @place = Place.new( params[:place] )
    if @place.save
      flash[:notice] = "Place created"
      redirect_to place_show_url( :place => @place )
    else
      @page_title = "Add a new place"
      @section = 'place'
      get_form_dependencies
      render :action => 'new'
    end
  end
  
  def edit
    place = params[:place]
    @place = Place.find( place )
    get_form_dependencies
    @page_title = "#{@place.title} - Edit"
    @section = 'place'
  end
  
  def update
    place = params[:place_to_update]
    @place = Place.find( place )
    if @place.update_attributes( params[:place] )
      flash[:notice] = "Place details updated"
      redirect_to place_show_url( :place => @place )
    else
      @page_title = "#{@place.label} - Edit"
      @section = 'place'
      get_form_dependencies
      render( :action => 'edit' )
    end
  end
  
  def delete
    place = params[:place]
    @place = Place.find( place )
    @place.destroy
    flash[:notice] = "Place deleted"
    redirect_to place_list_url
  end
  
  
  
private
  def get_form_dependencies
    @places = Place.find( 
      :all,
      :order => 'title'
    )
  end
end
