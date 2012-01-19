class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :prices_range_options_from
  helper_method :prices_range_options_to

  private

  def prices_range_options_from
  	[ ["Any", "0"], ["100,000+", "100000"], ["150,000+", "150000"], ["200,000+", "200000"], ["250,000+", "250000"] ]
  end

  def prices_range_options_to
  	[ ["Any", "900000"], ["100,000+", "100000"], ["150,000+", "150000"], ["200,000+", "200000"], ["250,000+", "250000"] ]
  end
end
  
  