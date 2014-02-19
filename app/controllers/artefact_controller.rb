class ArtefactController < ApplicationController
  def index
    @artefacts = Artefact.find( :all, 
      :order => 'title'
    )
    @page_title = 'Artefacts'
    @section = 'artefact'
  end
  def show
    artefact = params[:artefact]
    @artefact = Artefact.find_by_guid( artefact )
    @page_title = @artefact.title
    @section = 'artefact'
  end
  def new
    @artefact = Artefact.new
    @page_title = "Add a new artefact"
    @section = 'artefact'
  end
  def create
    @artefact = Artefact.new( params[:artefact] )
    if @artefact.save
      flash[:notice] = "Artefact created"
      redirect_to artefact_show_url( :artefact => @artefact.guid )
    else
      @page_title = "Add a new artefact"
      @section = 'artefact'
      render :action => 'new'
    end
  end
  def edit
    artefact = params[:artefact]
    @artefact = Artefact.find_by_guid( artefact )
    @page_title = "#{@artefact.title} - Edit"
    @section = 'artefact'
  end
  def update
    artefact = params[:artefact_to_update]
    @artefact = Artefact.find_by_guid( artefact )
    if @artefact.update_attributes( params[:artefact] )
      flash[:notice] = "Artefact details updated"
      redirect_to artefact_show_url( :artefact => @artefact.guid )
    else
      @page_title = "#{@artefact.title} - Edit"
      @section = 'artefact'
      render( :action => 'edit' )
    end
  end
  def delete
    artefact = params[:artefact]
    @artefact = Artefact.find_by_guid( artefact )
    @artefact.destroy
    flash[:notice] = "Artefact deleted"
    redirect_to artefact_list_url
  end
end
