class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    render 'info/index'
  end

  def about_page
    render 'info/about'
  end

  def contact_page
    render 'info/contact'
  end
end
