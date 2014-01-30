class CrewController < ApplicationController
  
  def index
    @crews = Crew.find( :all, 
      :order => 'given_name, family_name'
    )
    @page_title = 'Crews'
    @section = 'crew'
  end

  def show
    crew = params[:crew]
    @crew = Crew.find( crew )
    @page_title = @crew.name
    @section = 'crew'
  end
  
  def new
    @crew = Crew.new
    @page_title = "Add a new crew member"
    @section = 'crew'
  end
  
  def create
    @crew = Crew.new( params[:crew] )
    if @crew.save
      flash[:notice] = "Crew member created"
      redirect_to crew_show_url( :crew => @crew )
    else
      @page_title = "Add a new crew member"
      @section = 'crew'
      render :action => 'new'
    end
  end
  
  def edit
    crew = params[:crew]
    @crew = Crew.find( crew )
    @page_title = "#{@crew.name} - Edit"
    @section = 'crew'
  end
  
  def update
    crew = params[:crew_to_update]
    @crew = Crew.find( crew )
    if @crew.update_attributes( params[:crew] )
      flash[:notice] = "Crew member details updated"
      redirect_to crew_show_url( :crew => @crew )
    else
      @page_title = "#{@crew.name} - Edit"
      @section = 'crew'
      render( :action => 'edit' )
    end
  end
  
  def delete
    crew = params[:crew]
    @crew = Crew.find( crew )
    @crew.destroy
    flash[:notice] = "Crew member deleted"
    redirect_to crew_list_url
  end
end