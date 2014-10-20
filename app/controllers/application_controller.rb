class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # Added for devise gem - redirect user to login page if user not logged in
  before_action :authenticate_user!
end
