class BelongingController < ApplicationController
  
  def index
    character = params[:character]
    @character = Character.find_by_guid( character )
    @page_title = "#{@character.name} - Belongings"
    @section = 'character'
  end
  def show
    character = params[:character]
    @character = Character.find_by_guid( character )
    belonging = params[:belonging]
    @belonging = Belonging.find_by_guid( belonging )
    @page_title = "#{@character.name} - Owns #{@belonging.artefact.title}"
    @section = 'character'
  end
  def new
    character = params[:character]
    @character = Character.find_by_guid( character )
    @belonging = Belonging.new
    @belonging.character = @character
    get_form_dependencies
    @page_title = "#{@character.name} - Add a belonging"
    @section = 'character'
  end
  def create
    character = params[:character]
    @character = Character.find_by_guid( character )
    @belonging = Belonging.new( params[:belonging] )
    if @belonging.save
      flash[:notice] = "Belonging created"
      redirect_to character_show_url( :character => @character.guid )
    else
      get_form_dependencies
      @page_title = "#{@character.name} - Add a belonging"
      @section = 'character'
      render :action => 'new'
    end
  end
  def edit
    character = params[:character]
    @character = Character.find_by_guid( character )
    belonging = params[:belonging]
    @belonging = Belonging.find_by_guid( belonging )
    get_form_dependencies
    @page_title = "#{@character.name} - Edit belonging"
    @section = 'character'
  end
  def update
    belonging = params[:belonging_to_update]
    @belonging = Belonging.find_by_guid( belonging )
    if @belonging.update_attributes( params[:belonging] )
      flash[:notice] = "Belonging updated"
      redirect_to character_show_url
    else
      @page_title = "#{@belonging.character.name} - Edit belonging"
      @section = 'character'
      get_form_dependencies
      render( :action => 'edit' )
    end
  end
  def delete
    belonging = params[:belonging]
    @belonging = Belonging.find_by_guid( belonging )
    @belonging.destroy
    flash[:notice] = "Belonging removed"
    redirect_to character_show_url
  end
  
  
  
private
  def get_form_dependencies
    @artefacts = Artefact.find(
      :all,
      :order => 'title'
    )
  end
end
