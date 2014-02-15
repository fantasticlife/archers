class ApplicationController < ActionController::Base
  protect_from_forgery
  lock
  
  before_filter :get_universe
  
  def get_universe
    universe = FictionalUniverse.find( :first )
    if universe
      @universe_title = universe.title
      if universe.years_from_now and universe.years_from_now != 0
        @fictional_date = Date.today + universe.years_from_now.years
      else
        @fictional_date = Date.today
      end
    else
      @universe_title = 'No universe'
      @fictional_date = Date.today
    end
  end
end
