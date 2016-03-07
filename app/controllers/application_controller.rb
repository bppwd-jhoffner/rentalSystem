class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  layout :choose_layout
  def choose_layout
    if params[:controller] == "inventory" || params[:controller] == "home"
        layout = "application"
    else 
        layout = "administrative"
    end
  end    
end
