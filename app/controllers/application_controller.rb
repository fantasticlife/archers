class ApplicationController < ActionController::Base
  protect_from_forgery
  lock
  
  before_filter :fictional_date
  
  def fictional_date
    @fictional_date = Date.today
  end
end
