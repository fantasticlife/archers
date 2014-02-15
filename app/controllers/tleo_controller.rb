class TleoController < ApplicationController
  
  def show
    tleo = params[:tleo]
    @tleo = UniverseTleo.find_by_guid( tleo )
    @page_title = @tleo.title
    @section = 'universe'
  end
  
  def new
    @universe = FictionalUniverse.find( :first )
    @tleo = UniverseTleo.new
    @page_title = 'Add a programme'
    @section = 'universe'
  end

  def create
    @tleo = UniverseTleo.new( params[:universe_tleo] )
    if @tleo.save
      flash[:notice] = "Programme added"
      redirect_to universe_list_url
    else
      @page_title = 'Add a programme'
      @section = 'universe'
      render :action => 'new'
    end
  end
  
  def delete
    tleo = params[:tleo]
    @tleo = UniverseTleo.find_by_guid( tleo )
    @tleo.destroy
    flash[:notice] = "Programme deleted"
    redirect_to universe_list_url
  end
end
