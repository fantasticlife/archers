class PlaceNoteController < ApplicationController

  def index
    place = params[:place]
    @place = Place.find( place )
    @page_title = "#{@place.title} - Notes"
    @section = 'place'
  end

  def show
    place = params[:place]
    @place = Place.find( place )
    note = params[:note]
    @note = PlaceNote.find( note )
    @page_title = "#{@place.title} - Note"
    @section = 'place'
  end

  def new
    place = params[:place]
    @place = Place.find( place )
    @note = PlaceNote.new
    @note.place = @place
    @page_title = "#{@place.title} - Add a new note"
    @section = 'place'
  end

  def create
    place = params[:place]
    @place = Place.find( place )
    @note = PlaceNote.new( params[:place_note] )
    if @note.save
      flash[:notice] = "Note created"
      redirect_to place_show_url( :place => @place )
    else
      @page_title = "#{@place.title} - Add a new note"
      @section = 'place'
      render :action => 'new'
    end
  end

  def edit
    place = params[:place]
    @place = Place.find( place )
    note = params[:note]
    @note = PlaceNote.find( note )
    @page_title = "#{@place.title} - Edit note"
    @section = 'place'
  end

  def update
    note = params[:note_to_update]
    @note = PlaceNote.find( note )
    if @note.update_attributes( params[:place_note] )
      flash[:notice] = "Note updated"
      redirect_to place_show_url
    else
      @page_title = "#{@note.place.title} - Edit note"
      @section = 'place'
      render( :action => 'edit' )
    end
  end

  def delete
    note = params[:note]
    @note = PlaceNote.find( note )
    @note.destroy
    flash[:notice] = "Note deleted"
    redirect_to place_show_url
  end
end
