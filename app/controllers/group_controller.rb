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
end
