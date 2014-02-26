class ScriptLineController < ApplicationController

  def index
    scene = params[:scene]
    @scene = Scene.find_by_guid( scene )
    @page_title = "#{@scene.display_title_with_episode} - Lines"
    @section = 'episode'
  end
  def show
    scene = params[:scene]
    @scene = Scene.find_by_guid( scene )
    script_line = params[:line]
    @script_line = ScriptLine.find_by_guid( script_line )
    @page_title = "#{@scene.display_title_with_episode} - Line"
    @section = 'episode'
  end
  def new
    scene = params[:scene]
    @scene = Scene.find_by_guid( scene )
    @script_line = ScriptLine.new
    @script_line.scene = @scene
    get_form_dependencies
    @page_title = "#{@scene.display_title_with_episode} - Add a new line"
    @section = 'episode'
  end
  def create
    scene = params[:scene]
    @scene = Scene.find_by_guid( scene )
    @script_line = ScriptLine.new( params[:script_line] )
    if @script_line.save
      flash[:notice] = "Line created"
      redirect_to script_line_list_url
    else
      @page_title = "#{@scene.display_title_with_episode} - Add a new line"
      @section = 'episode'
      render :action => 'new'
    end
  end
  def edit
    scene = params[:scene]
    @scene = Scene.find_by_guid( scene )
    script_line = params[:line]
    @script_line = ScriptLine.find_by_guid( script_line )
    get_form_dependencies
    @page_title = "#{@scene.display_title_with_episode} - Edit line"
    @section = 'episode'
  end
  def update
    script_line = params[:line_to_update]
    @script_line = ScriptLine.find_by_guid( script_line )
    if @script_line.update_attributes( params[:script_line] )
      flash[:notice] = "Line updated"
      redirect_to script_line_list_url
    else
      get_form_dependencies
      @page_title = "#{@scene.display_title_with_episode} - Edit line"
      @section = 'episode'
      render( :action => 'edit' )
    end
  end
  def delete
    script_line = params[:line]
    @script_line = ScriptLine.find_by_guid( script_line )
    @script_line.destroy
    flash[:notice] = "Line deleted"
    redirect_to script_line_list_url
  end
  
  
  
private
  def get_form_dependencies
    @characters = Character.find(
      :all, 
      :order => 'name'
    )
  end
end
