class CastingController < ApplicationController
  
  def index
    character = params[:character]
    @character = Character.find( character )
    @page_title = @character.name + ' - Actors'
    @section = 'character'
  end
  
  def show
    character = params[:character]
    @character = Character.find( character )
    casting = params[:casting]
    @casting = Casting.find( casting )
    @page_title = @character.name + ' - Actors'
    @section = 'character'
  end
  
  def new
    character = params[:character]
    @character = Character.find( character )
    @casting = Casting.new
    @casting.character = @character
    @page_title = "#{@character.name} - Add a new actor"
    @section = 'character'
    get_form_dependencies
  end

  def create
    character = params[:character]
    @character = Character.find( character )
    @casting = Casting.new( params[:casting] )
    if @casting.save
      flash[:notice] = "New actor added"
      redirect_to character_show_url( :character => @character )
    else
      @page_title = "#{@character.name} - Add a new actor"
      @section = 'character'
      render :action => 'new'
    end
  end

  def edit
    character = params[:character]
    @character = Character.find( character )
    casting = params[:casting]
    @casting = Casting.find( casting )
    @page_title = "#{@character.name} - Edit actor"
    @section = 'character'
    get_form_dependencies
  end

  def update
    casting = params[:casting_to_update]
    @casting = Casting.find( casting )
    if @casting.update_attributes( params[:casting] )
      flash[:notice] = "Actor updated"
      redirect_to character_show_url
    else
      @page_title = "#{@casting.character.name} - Edit actor"
      @section = 'character'
      render( :action => 'edit' )
    end
  end

  def delete
    casting = params[:casting]
    @casting = Casting.find( casting )
    @casting.destroy
    flash[:notice] = "Actor casting removed"
    redirect_to character_show_url
  end
  
  
  
private
  def get_form_dependencies
    @actors = Actor.find(
      :all,
      :order => 'given_name, middle_name, family_name'
    )
  end
end
