class Home < ActiveRecord::Base
  has_attached_file :image, :styles => { :thumb => "145x105>" },
  :storage => :s3,
  :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
  :path => "/homes/:id/:style/:basename.:extension"


  has_attached_file :floorplan , :url  => "/assets/homes/:id/floorplan/:basename.:extension",
  :storage => :s3,
  :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
  :path => "/homes/:id/floorplan/:basename.:extension"

  has_attached_file :pdf , :url  => "/assets/homes/:id/pdf/:basename.:extension",
  :storage => :s3,
  :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
  :path => "/homes/:id/pdf/:basename.:extension"
  
  
end
