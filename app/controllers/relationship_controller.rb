class RelationshipController < ApplicationController
  
  def index
    @page_title = 'Relationships'
    @section = 'relationship'
    @sub_section = 'list'
    @relationships = Relationship.find(
      :all, 
      :select => 'r.*, rt.label as label',
      :from => 'relationships r, relationship_types rt',
      :conditions => 'r.relationship_type_id = rt.id',
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

  def delete
    relationship = params[:relationship]
    @relationship = Relationship.find( relationship )
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
  
  # relationships need to be indexed by position of character in array
  def get_indexed_relationships( characters, relationships )
    character_ids = characters.map {|c| c.id}
    relationships.each do |r|
      r.source_id = character_ids.index( r.from_character_id)
      r.target_id = character_ids.index( r.to_character_id)
    end
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
    
    relationships = Relationship.find( :all )
    
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
