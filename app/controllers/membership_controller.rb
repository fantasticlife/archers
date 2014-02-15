class MembershipController < ApplicationController

  def index
    character = params[:character]
    @character = Character.find_by_guid( character )
    @page_title = "#{@character.name} - Group memberships"
    @section = 'character'
  end
  def show
    character = params[:character]
    @character = Character.find_by_guid( character )
    membership = params[:membership]
    @membership = Membership.find_by_guid( membership )
    @page_title = "#{@character.name} - Membership of #{@membership.group.label}"
    @section = 'character'
  end
  def new
    character = params[:character]
    @character = Character.find_by_guid( character )
    @membership = Membership.new
    @membership.character = @character
    get_form_dependencies
    @page_title = "#{@character.name} - Add a new group membership"
    @section = 'character'
  end
  def create
    character = params[:character]
    @character = Character.find_by_guid( character )
    @membership = Membership.new( params[:membership] )
    if @membership.save
      flash[:notice] = "Group membership created"
      redirect_to character_show_url( :character => @character.guid )
    else
      get_form_dependencies
      @page_title = "#{@character.name} - Add a new group membership"
      @section = 'character'
      render :action => 'new'
    end
  end
  def edit
    character = params[:character]
    @character = Character.find_by_guid( character )
    membership = params[:membership]
    @membership = Membership.find_by_guid( membership )
    get_form_dependencies
    @page_title = "#{@character.name} - Edit group membership"
    @section = 'character'
  end
  def update
    membership = params[:membership_to_update]
    @membership = Membership.find_by_guid( membership )
    if @membership.update_attributes( params[:membership] )
      flash[:notice] = "Group membership updated"
      redirect_to character_show_url
    else
      @page_title = "#{@membership.character.name} - Edit group membership"
      @section = 'character'
      get_form_dependencies
      render( :action => 'edit' )
    end
  end
  def delete
    membership = params[:membership]
    @membership = Membership.find_by_guid( membership )
    @membership.destroy
    flash[:notice] = "Group membership deleted"
    redirect_to character_show_url
  end
  
  
  
private
  def get_form_dependencies
    @groups = Group.find(
      :all,
      :order => 'label'
    )
    @membership_roles = MembershipRole.find(
      :all,
      :order => 'label'
    )
  end
end
