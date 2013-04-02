class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :initialize_session
  
protected
  def initialize_session
    session[:friends] ||= []
    @my_friends = []
    session[:friends].each { |id| @my_friends << Customer.find(id) }
  end
end
