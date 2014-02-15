class StorylineController < ApplicationController
  
  def index
    @page_title = 'Storylines'
    @section = 'storyline'
    @storylines = Storyline.find( :all,
      :order => 'position'
    )
  end
  def show
    storyline = params[:storyline]
    @storyline = Storyline.find_by_guid( storyline )
    @page_title = @storyline.title
    @section = 'storyline'
  end
  def new
    @storyline = Storyline.new
    get_form_dependencies
    @page_title = "Add a new storyline"
    @section = 'storyline'
  end
  def create
    @storyline = Storyline.new( params[:storyline] )
    if @storyline.save
      flash[:notice] = "Storyline created"
      redirect_to storyline_show_url( :storyline => @storyline.guid )
    else
      @page_title = "Add a new storyline"
      @section = 'storyline'
      get_form_dependencies
      render :action => 'new'
    end
  end
  def edit
    storyline = params[:storyline]
    @storyline = Storyline.find_by_guid( storyline )
    get_form_dependencies
    @page_title = "#{@storyline.title} - Edit"
    @section = 'storyline'
  end
  def update
    storyline_to_update = params[:storyline_to_update]
    @storyline = Storyline.find_by_guid( storyline_to_update )
    if @storyline.update_attributes( params[:storyline] )
      flash[:notice] = "Storyline details updated"
      redirect_to storyline_show_url( :storyline => @storyline.guid )
    else
      @page_title = "#{@storyline.title} - Edit"
      @section = 'storyline'
      get_form_dependencies
      render( :action => 'edit' )
    end
  end
  def delete
    storyline = params[:storyline]
    @storyline = Storyline.find_by_guid( storyline )
    @storyline.destroy
    flash[:notice] = "Storyline deleted"
    redirect_to storyline_list_url
  end
  
  
private
  def get_form_dependencies
    @characters = Character.find(
     :all,
     :order => 'name'
    )
  end
end
