class OccupationController < ApplicationController
  
  def index
    @occupations = Occupation.find( :all, 
      :order => 'label'
    )
    @page_title = 'Occupations'
    @section = 'occupation'
  end
  def show
    occupation = params[:occupation]
    @occupation = Occupation.find_by_guid( occupation )
    @page_title = @occupation.label
    @section = 'occupation'
  end
  def new
    @occupation = Occupation.new
    @page_title = "Add a new occupation"
    @section = 'occupation'
  end
  def create
    @occupation = Occupation.new( params[:occupation] )
    if @occupation.save
      flash[:notice] = "Occupation created"
      redirect_to occupation_show_url( :occupation => @occupation.guid )
    else
      @page_title = "Add a new occupation"
      @section = 'occupation'
      render :action => 'new'
    end
  end
  def edit
    occupation = params[:occupation]
    @occupation = Occupation.find_by_guid( occupation )
    @page_title = "#{@occupation.label} - Edit"
    @section = 'occupation'
  end
  def update
    occupation = params[:occupation_to_update]
    @occupation = Occupation.find_by_guid( occupation )
    if @occupation.update_attributes( params[:occupation] )
      flash[:notice] = "Occupation details updated"
      redirect_to occupation_show_url( :occupation => @occupation.guid )
    else
      @page_title = "#{@occupation.title} - Edit"
      @section = 'occupation'
      render( :action => 'edit' )
    end
  end
  def delete
    occupation = params[:occupation]
    @occupation = Occupation.find_by_guid( occupation )
    @occupation.destroy
    flash[:notice] = "Occupation deleted"
    redirect_to occupation_list_url
  end
end
