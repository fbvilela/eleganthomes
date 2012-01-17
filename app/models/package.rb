class Package < ActiveRecord::Base
   has_attached_file :image, :styles => { :thumb => "145x105>" }, 
   :url  => "/assets/packages/:id/:style/:basename.:extension",
   :path => ":rails_root/public/assets/packages/:id/:style/:basename.:extension"

   has_attached_file :pdf , :url  => "/assets/packages/:id/pdf/:basename.:extension",
  :path => ":rails_root/public/assets/packages/:id/pdf/:basename.:extension"  

   has_attached_file :floorplan , :url  => "/assets/packages/:id/floorplan/:basename.:extension",
  :path => ":rails_root/public/assets/packages/:id/floorplan/:basename.:extension"

  acts_as_gmappable :process_geocoding => true, :check_process => false

	def gmaps4rails_address
		"21,North Road,Newport,3015"
		#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
  		#"#{self.lot_number}, #{self.city}, #{self.country}" 
	end

  def gmaps4rails_marker_picture
    {
      "picture" => self.image.url(:thumb),
      "width" => 35,
      "height" => 35
    }

  end
end
