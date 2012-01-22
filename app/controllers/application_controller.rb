class ApplicationController < ActionController::Base
  protect_from_forgery
  helper :all
  helper_method :prices_range_options_from
  helper_method :prices_range_options_to
  
  USER, PASSWORD = 'admin', 'test'

  private

  def prices_range_options_from
  	[ ["Any", ""], ["300,000", "300000"], ["350,000", "350000"],
    ["400,000", "400000"], ["450,000", "450000"], ["500,000", "500000"], ["550,000", "550000"] ]
  end

  def prices_range_options_to
  	prices_range_options_from
  end

 
 


  def authentication_check
    authenticate_or_request_with_http_basic do |user, password|
        user == USER && password == PASSWORD 
    end
  end
end
  
  