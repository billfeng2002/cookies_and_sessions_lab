class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def cart
    if(session[:cart]==nil)
      session[:cart]=[]
    end
    return session[:cart]
  end
end
