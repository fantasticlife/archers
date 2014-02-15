class RelationshipTypeController < ApplicationController

  def index
    @page_title = 'Relationship types'
    @section = 'relationship'
    @sub_section = 'type'
    @relationship_types = RelationshipType.find(
      :all,
      :order => 'label'
    )
  end
  def show
    relationship_type = params[:relationship_type]
    @relationship_type = RelationshipType.find_by_guid( relationship_type )
    @page_title = @relationship_type.label
    @section = 'relationship'
    @sub_section = 'type'
  end
  def new
    @page_title = 'Add a new relationship type'
    @section = 'relationship'
    @sub_section = 'type'
    @relationship_type = RelationshipType.new
  end
  def create
    @relationship_type = RelationshipType.new( params[:relationship_type] )
    if @relationship_type.save
      flash[:notice] = "Relationship type created"
      redirect_to relationship_type_list_url
    else
      @page_title = "Add a new relationship type"
      @section = 'relationship'
      @sub_section = 'type'
      render :action => 'new'
    end
  end
  def edit
    relationship_type = params[:relationship_type]
    @relationship_type = RelationshipType.find_by_guid( relationship_type )
    @page_title = "#{@relationship_type.label} - Edit"
    @section = 'relationship'
    @sub_section = 'type'
  end
  def update
    relationship_type_to_update = params[:relationship_type_to_update]
    @relationship_type = RelationshipType.find_by_guid( relationship_type_to_update )
    if @relationship_type.update_attributes( params[:relationship_type] )
      flash[:notice] = "Relationship type details updated"
      redirect_to relationship_type_show_url( :relationship_type => @relationship_type.guid )
    else
      @page_title = "#{@relationship_type.label} - Edit"
      @section = 'relationship'
      @sub_section = 'type'
      render( :action => 'edit' )
    end
  end
  def delete
    relationship_type = params[:relationship_type]
    @relationship_type = RelationshipType.find_by_guid( relationship_type )
    @relationship_type.destroy
    flash[:notice] = "Relationship type deleted"
    redirect_to relationship_type_list_url
  end
end
