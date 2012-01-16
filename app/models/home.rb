class Home < ActiveRecord::Base
  has_attached_file :image, :styles => { :thumb => "145x105>" },
  :url  => "/assets/homes/:id/:style/:basename.:extension",
  :path => ":rails_root/public/assets/homes/:id/:style/:basename.:extension"
  
  
end
