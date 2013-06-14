class UsersController < ApplicationController
  def login
    session[:user_id] = params[:user_id]
  end
end