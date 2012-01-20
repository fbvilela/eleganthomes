class AdminController < ApplicationController

  before_filter :authentication_check

  def check_login
  	redirect_to page_path("admin")
  end

end