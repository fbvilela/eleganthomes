class Home < ActiveRecord::Base
  has_attached_file :image, :styles => { :thumb => "145x105>" },
  :url  => "/assets/homes/:id/:style/:basename.:extension",
  :path => ":rails_root/public/assets/homes/:id/:style/:basename.:extension"


  has_attached_file :floorplan , :url  => "/assets/homes/:id/floorplan/:basename.:extension",
  :path => ":rails_root/public/assets/homes/:id/floorplan/:basename.:extension"

  has_attached_file :pdf , :url  => "/assets/homes/:id/pdf/:basename.:extension",
  :path => ":rails_root/public/assets/homes/:id/pdf/:basename.:extension"
  
  
end
