class CharacterNoteController < ApplicationController

  def index
    character = params[:character]
    @character = Character.find_by_guid( character )
    @page_title = "#{@character.name} - Notes"
    @section = 'character'
  end
  def show
    character = params[:character]
    @character = Character.find_by_guid( character )
    note = params[:note]
    @note = CharacterNote.find_by_guid( note )
    @page_title = "#{@character.name} - Note"
    @section = 'character'
  end
  def new
    character = params[:character]
    @character = Character.find_by_guid( character )
    @note = CharacterNote.new
    @note.character = @character
    @page_title = "#{@character.name} - Add a new note"
    @section = 'character'
  end
  def create
    character = params[:character]
    @character = Character.find_by_guid( character )
    @note = CharacterNote.new( params[:character_note] )
    if @note.save
      flash[:notice] = "Note created"
      redirect_to character_show_url( :character => @character.guid )
    else
      @page_title = "#{@character.name} - Add a new note"
      @section = 'character'
      render :action => 'new'
    end
  end
  def edit
    character = params[:character]
    @character = Character.find_by_guid( character )
    note = params[:note]
    @note = CharacterNote.find_by_guid( note )
    @page_title = "#{@character.name} - Edit note"
    @section = 'character'
  end
  def update
    note = params[:note_to_update]
    @note = CharacterNote.find_by_guid( note )
    if @note.update_attributes( params[:character_note] )
      flash[:notice] = "Note updated"
      redirect_to character_show_url
    else
      @page_title = "#{@note.character.name} - Edit note"
      @section = 'character'
      render( :action => 'edit' )
    end
  end
  def delete
    note = params[:note]
    @note = CharacterNote.find_by_guid( note )
    @note.destroy
    flash[:notice] = "Note deleted"
    redirect_to character_show_url
  end
end
