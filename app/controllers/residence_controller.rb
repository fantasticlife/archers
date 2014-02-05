class ResidenceController < ApplicationController  

  def index
    character = params[:character]
    @character = Character.find( character )
    @page_title = "#{@character.name} - Residences"
    @section = 'character'
  end
  
  def show
    character = params[:character]
    @character = Character.find( character )
    residence = params[:residence]
    @residence = Residence.find( residence )
    @page_title = "#{@character.name} - Residence at #{@residence.place.title}"
    @section = 'character'
  end

  def new
    character = params[:character]
    @character = Character.find( character )
    @residence = Residence.new
    @residence.character = @character
    get_form_dependencies
    @page_title = "#{@character.name} - Add a new residence"
    @section = 'character'
  end

  def create
    character = params[:character]
    @character = Character.find( character )
    @residence = Residence.new( params[:residence] )
    if @residence.save
      flash[:notice] = "Residence created"
      redirect_to character_show_url( :character => @character )
    else
      get_form_dependencies
      @page_title = "#{@character.name} - Add a new residence"
      @section = 'character'
      render :action => 'new'
    end
  end
  
  def edit
    character = params[:character]
    @character = Character.find( character )
    residence = params[:residence]
    @residence = Residence.find( residence )
    get_form_dependencies
    @page_title = "#{@character.name} - Edit residence"
    @section = 'character'
  end

  def update
    residence = params[:residence_to_update]
    @residence = Residence.find( residence )
    if @residence.update_attributes( params[:residence] )
      flash[:notice] = "Residence updated"
      redirect_to character_show_url
    else
      @page_title = "#{@residence.character.name} - Edit residence"
      @section = 'character'
      get_form_dependencies
      render( :action => 'edit' )
    end
  end

  def delete
    residence = params[:residence]
    @residence = Residence.find( residence )
    @residence.destroy
    flash[:notice] = "Residence deleted"
    redirect_to character_show_url
  end



private
  def get_form_dependencies
    @places = Place.find(
      :all,
      :order => 'title'
    )
  end
end
