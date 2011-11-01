class Home < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "285x167>" }
  
  
end
