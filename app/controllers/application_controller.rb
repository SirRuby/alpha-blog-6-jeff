class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find(session[:user_id])  if session[:user_id]
  end
  #memoization to prevent multiple queries for current_user in the database

  def logged_in?
    !!current_user
  end
  #turn current_user instance variable into a true/false boolean to check if current user exists
end
