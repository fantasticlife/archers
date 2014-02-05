class GroupController < ApplicationController
  
  def index
    @groups = Group.find(
      :all,
      :order => 'label'
    )
    @page_title = 'Groups'
    @section = 'group'
  end
  
  def show
    group = params[:group]
    @group = Group.find( group )
    @page_title = @group.label
    @section = 'group'
  end

  def new
    @group = Group.new
    @page_title = "Add a new group"
    @section = 'group'
  end

  def create
    @group = Group.new( params[:group] )
    if @group.save
      flash[:notice] = "Group created"
      redirect_to group_show_url( :group => @group )
    else
      @page_title = "Add a new group"
      @section = 'group'
      render :action => 'new'
    end
  end
  
  def edit
    group = params[:group]
    @group = Group.find( group )
    @page_title = "#{@group.label} - Edit"
    @section = 'group'
  end

  def update
    group = params[:group_to_update]
    @group = Group.find( group )
    if @group.update_attributes( params[:group] )
      flash[:notice] = "Group details updated"
      redirect_to group_show_url( :group => @group )
    else
      @page_title = "#{@group.label} - Edit"
      @section = 'group'
      render( :action => 'edit' )
    end
  end

  def delete
    group = params[:group]
    @group = Group.find( group )
    @group.destroy
    flash[:notice] = "Group deleted"
    redirect_to group_list_url
  end
end
