class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  before_action :scope_current_user

  private

  def scope_current_user
  	User.current = current_user
  end
  
end
