class CharacterController < ApplicationController
  
  def index
    @characters = Character.find(
      :all,
      :order => 'name'
    )
    @page_title = 'Characters'
    @section = 'character'
    @sub_section = 'list'
  end
  
  def cooccurrence
    respond_to do |format|
      format.html {
        @page_title = 'Character co-occurrence graph'
        @section = 'character'
        @sub_section = 'cooccurrence'
      }
      format.json {
        @nodes = get_nodes
        @edges = get_edges( @nodes )
        render :template => 'shared/graphviz'
      }
    end
  end
  
  def show
    character = params[:character]
    @character = Character.find( character )
    @page_title = @character.name
    @section = 'character'
  end
  
  def neighbours
    character = params[:character]
    @character = Character.find( character )
    respond_to do |format|
      format.html {
        @page_title = "#{@character.name} - Neighbours"
        @section = 'character'
      }
      format.json {
        @nodes = []
        @nodes << @character
        @nodes = @nodes + @character.relationships_to_characters + @character.cooccurrent_characters
        @nodes = @nodes.uniq
        @edges = get_neighbour_edges( @nodes )
        render :template => 'shared/graphviz'
      }
    end
  end
  
  def new
    @character = Character.new
    get_form_dependencies
    @page_title = "Add a new character"
    @section = 'character'
  end
  
  def create
    @character = Character.new( params[:character] )
    if @character.save
      flash[:notice] = "Character created"
      redirect_to character_show_url( :character => @character )
    else
      @page_title = "Add a new character"
      @section = 'character'
      get_form_dependencies
      render :action => 'new'
    end
  end
  
  def edit
    character = params[:character]
    @character = Character.find( character )
    get_form_dependencies
    @page_title = "#{@character.name} - Edit"
    @section = 'character'
  end
  
  def update
    character_to_update = params[:character_to_update]
    @character = Character.find( character_to_update )
    if @character.update_attributes( params[:character] )
      flash[:notice] = "Character details updated"
      redirect_to character_show_url( :character => @character )
    else
      @page_title = "#{@character.name} - Edit"
      @section = 'character'
      get_form_dependencies
      render( :action => 'edit' )
    end
  end
  
  def delete
    character = params[:character]
    @character = Character.find( character )
    @character.destroy
    flash[:notice] = "Character deleted"
    redirect_to character_list_url
  end
  
  
  
private
  def get_nodes
    nodes = []
    characters = Character.find( :all )
    # only get characters with co-occurrent characters
    characters.each do |c|
      nodes << c unless c.cooccurrent_characters.empty? 
    end
    nodes
  end
  
  def get_edges( characters )
    character_ids = characters.map {|c| c.id}
    
    edges = []
    
    characters.each do |c|
      c.cooccurrent_characters.each do |cc|
        cc.source_index = character_ids.index( c.id )
        cc.target_index = character_ids.index( cc.id )
        cc.value = cc.count
        edges << cc
      end
    end
    edges
  end
  
  def get_neighbour_edges( characters )
    character_ids = characters.map {|c| c.id}
    
    edges = []
    
    characters.each do |c|
      unless c.id == characters.first.id
        c.source_index = character_ids.index( characters.first.id )
        c.target_index = character_ids.index( c.id )
        c.value = 1
        edges << c
      end
    end
    edges
  end
  
  def get_form_dependencies
    @character_types = CharacterType.find(
      :all,
      :order => 'label'
    )
    @places = Place.find(
      :all,
      :order => 'title'
    )
    @storylines = Storyline.find(
      :all,
      :order => 'title'
    )
    @character_titles = CharacterTitle.find(
      :all,
      :order => 'label'
    )
    @character_appearance_types = CharacterAppearanceType.find(
      :all,
      :order => 'sort_order'
    )
    @occupations = Occupation.find(
      :all,
      :order => 'label'
    )
  end
end
