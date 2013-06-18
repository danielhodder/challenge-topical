class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  prepend_before_filter do
    session[:user_id] ||= User.first.id
  end

  def current_user
    User.find(session[:user_id])
  end
  helper_method(:current_user)
end