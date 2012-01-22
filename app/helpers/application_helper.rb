module ApplicationHelper
	def prices_range_options_from
  	[ ["Any", "0"], ["100,000+", "100000"], ["150,000+", "150000"], ["200,000+", "200000"], ["250,000+", "250000"] ]
  end

  def prices_range_options_to
  	[ ["Any", "900000"], ["100,000+", "100000"], ["150,000+", "150000"], ["200,000+", "200000"], ["250,000+", "250000"] ]
  end

  def land_size_options_from
    [ ["Any", ""] , ["300m2", "300"], ["400m2", "400"], ["500m2", "500"], ["600m2", "600"] ]
  end

  def land_size_options_to
    land_size_options_from
  end

  def bedrooms_options
  	[ ["Any", ""] , ["1", "1"], ["2", "2"], ["3", "3"], ["4", "4"], ["5", "5"] ]
  end

  def storeys_options
  	[ ["Any", ""], ["1", "1"], ["2", "2"] ]
  end

  def suburb_options
  	suburbs = [ ["Any", ""]] + Package.all.collect(&:suburb).reject(&:blank?).uniq.collect{ |e| [e,e] }
  end



end
