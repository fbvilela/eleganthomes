class Package < ActiveRecord::Base
   has_attached_file :image, :styles => { :thumb => "145x105>" }, 
   :url  => "/assets/packages/:id/:style/:basename.:extension",
   :path => ":rails_root/public/assets/packages/:id/:style/:basename.:extension"

   has_attached_file :pdf , :url  => "/assets/packages/:id/pdf/:basename.:extension",
  :path => ":rails_root/public/assets/packages/:id/pdf/:basename.:extension"  

   has_attached_file :floorplan , :url  => "/assets/packages/:id/floorplan/:basename.:extension",
  :path => ":rails_root/public/assets/packages/:id/floorplan/:basename.:extension"
end
