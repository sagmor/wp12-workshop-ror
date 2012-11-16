class HomeController < ApplicationController
  before_filter :redirect_logged_user!, only: :index, if: :user_signed_in?
  
  def index
  end
  
  def redirect_logged_user!
    redirect_to todos_path
  end
end
