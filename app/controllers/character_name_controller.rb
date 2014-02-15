class CharacterNameController < ApplicationController

  def index
    character = params[:character]
    @character = Character.find_by_guid( character )
    @page_title = "#{@character.name} - Name changes"
    @section = 'character'
  end
  def show
    character = params[:character]
    @character = Character.find_by_guid( character )
    name = params[:name]
    @name = CharacterName.find_by_guid( name )
    @page_title = "#{@character.name} - Name"
    @section = 'character'
  end
  def new
    character = params[:character]
    @character = Character.find_by_guid( character )
    @name = CharacterName.new
    @name.character = @character
    @page_title = "#{@character.name} - Add a new name"
    @section = 'character'
  end
  def create
    character = params[:character]
    @character = Character.find_by_guid( character )
    @name = CharacterName.new( params[:character_name] )
    if @name.save
      flash[:notice] = "Name created"
      redirect_to character_show_url( :character => @character.guid )
    else
      @page_title = "#{@character.name} - Add a new name"
      @section = 'character'
      render :action => 'new'
    end
  end
  def edit
    character = params[:character]
    @character = Character.find_by_guid( character )
    name = params[:name]
    @name = CharacterName.find_by_guid( name )
    @page_title = "#{@character.name} - Edit name"
    @section = 'character'
  end
  def update
    name = params[:name_to_update]
    @name = CharacterName.find_by_guid( name )
    if @name.update_attributes( params[:character_name] )
      flash[:notice] = "Name updated"
      redirect_to character_show_url
    else
      @page_title = "#{@name.character.name} - Edit name"
      @section = 'character'
      render( :action => 'edit' )
    end
  end
  def delete
    name = params[:name]
    @name = CharacterName.find_by_guid( name )
    @name.destroy
    flash[:notice] = "Name deleted"
    redirect_to character_show_url
  end
end
