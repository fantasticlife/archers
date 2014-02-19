class CharacterOccupationController < ApplicationController
  
  def index
    character = params[:character]
    @character = Character.find_by_guid( character )
    @page_title = "#{@character.name} - Occupations"
    @section = 'character'
  end
  def show
    character = params[:character]
    @character = Character.find_by_guid( character )
    character_occupation = params[:character_occupation]
    @character_occupation = CharactersOccupation.find_by_guid( character_occupation )
    @page_title = "#{@character.name} - Occupation #{@character_occupation.occupation.label}"
    @section = 'character'
  end
  def new
    character = params[:character]
    @character = Character.find_by_guid( character )
    @character_occupation = CharactersOccupation.new
    @character_occupation.character = @character
    get_form_dependencies
    @page_title = "#{@character.name} - Add an occupation"
    @section = 'character'
  end
  def create
    character = params[:character]
    @character = Character.find_by_guid( character )
    @character_occupation = CharactersOccupation.new( params[:characters_occupation] )
    if @character_occupation.save
      flash[:notice] = "Occupation added"
      redirect_to character_show_url( :character => @character.guid )
    else
      get_form_dependencies
      @page_title = "#{@character.name} - Add an occupation"
      @section = 'character'
      render :action => 'new'
    end
  end
  def edit
    character = params[:character]
    @character = Character.find_by_guid( character )
    character_occupation = params[:character_occupation]
    @character_occupation = CharactersOccupation.find_by_guid( character_occupation )
    get_form_dependencies
    @page_title = "#{@character.name} - Edit occupation"
    @section = 'character'
  end
  def update
    character_occupation = params[:character_occupation_to_update]
    @character_occupation = CharactersOccupation.find_by_guid( character_occupation )
    if @character_occupation.update_attributes( params[:characters_occupation] )
      flash[:notice] = "Occupation updated"
      redirect_to character_show_url
    else
      @page_title = "#{@character_occupation.character.name} - Edit occupation"
      @section = 'character'
      get_form_dependencies
      render( :action => 'edit' )
    end
  end
  def delete
    character_occupation = params[:character_occupation]
    @character_occupation = CharactersOccupation.find_by_guid( character_occupation )
    @character_occupation.destroy
    flash[:notice] = "Occupation removed"
    redirect_to character_show_url
  end
  
  
  
private
  def get_form_dependencies
    @occupations = Occupation.find( 
     :all,
     :order => 'label'
    )
  end
end
