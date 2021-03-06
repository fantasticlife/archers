class RelationshipController < ApplicationController
  
  def index
    @page_title = 'Relationships'
    @section = 'relationship'
    @sub_section = 'list'
    @relationships = Relationship.find( 
      :all,
      :order => 'created_at'
    )
  end
  def graphviz
    respond_to do |format|
      format.html {
        @page_title = 'Relationship graph'
        @section = 'relationship'
        @sub_section = 'graphviz'
      }
      format.json {
        @nodes = get_nodes
        @edges = get_edges( @nodes )
        render :template => 'shared/graphviz'
      }
      format.gv {
        @nodes = get_nodes
        @edges = get_edges( @nodes )
        render :template => 'shared/graphviz'
      }
    end
  end
  def show
    relationship = params[:relationship]
    @relationship = Relationship.find_by_guid( relationship )
    @page_title = "Relationships - #{@relationship.display_label}"
    @section = 'relationship'
  end
  def new
    @page_title = 'Add a new relationship'
    @section = 'relationship'
    @relationship = Relationship.new
    get_form_dependencies
  end
  def create
    @relationship = Relationship.new( params[:relationship] )
    if @relationship.save
      flash[:notice] = "Relationship created"
      redirect_to relationship_list_url
    else
      @page_title = "Add a new relationship"
      @section = 'relationship'
      get_form_dependencies
      render :action => 'new'
    end
  end
  def edit
    relationship = params[:relationship]
    @relationship = Relationship.find_by_guid( relationship )
    @page_title = "#{@relationship.display_label} - Edit"
    @section = 'relationship'
    get_form_dependencies
  end
  def update
    relationship = params[:relationship_to_update]
    @relationship = Relationship.find_by_guid( relationship )
    if @relationship.update_attributes( params[:relationship] )
      flash[:notice] = "Relationship details updated"
      redirect_to relationship_list_url
    else
      @page_title = "#{@relationship.display_label} - Edit"
      @section = 'relationship'
      get_form_dependencies
      render( :action => 'edit' )
    end
  end
  def delete
    relationship = params[:relationship]
    @relationship = Relationship.find_by_guid( relationship )
    @relationship.destroy
    flash[:notice] = "Relationship deleted"
    redirect_to relationship_list_url
  end
  
  
  
private
  def get_form_dependencies
    @characters = Character.find( 
      :all,
      :order => 'name'
    )
    @relationship_types = RelationshipType.find(
      :all,
      :order => 'label'
    )
  end
  def get_nodes
    characters = Character.find( :all )
    nodes = []
    characters.each do |c|
      nodes << c unless c.relationships.empty?
    end
    nodes
  end
  def get_edges( characters )
    character_ids = characters.map {|c| c.id}
    
    edges = []
    
    relationships = Relationship.find(
      :all,
      :conditions => 'from_character_id != to_character_id'
    )
    
    relationships.each do |r|
      r.source_id = r.from_character_id
      r.target_id = r.to_character_id
      r.source_index = character_ids.index( r.from_character_id )
      r.target_index = character_ids.index( r.to_character_id )
      r.value = 1
      edges << r
    end
    edges
  end
end
