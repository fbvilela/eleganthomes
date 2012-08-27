class Package < ActiveRecord::Base
   has_attached_file :image, :styles => { :thumb => "145x105>" }, 
   :storage => :s3,
   :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
   :path => ":/packages/:id/:style/:basename.:extension"

   has_attached_file :pdf , 
   :storage => :s3,
   :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
   :path => "/packages/:id/pdf/:basename.:extension"  

   has_attached_file :floorplan , 
   :storage => :s3,
   :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
   :path => "/packages/:id/floorplan/:basename.:extension"

   acts_as_gmappable :process_geocoding => true, :check_process => false

	def gmaps4rails_address
		self.address.blank? ? "Melbourne, Vic, 3000" : self.address
		#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
  		#"#{self.lot_number}, #{self.city}, #{self.country}" 
	end

  
end
