class Asset < ActiveRecord::Base
  
  belongs_to :album
  has_attached_file :image, :styles => { :thumb=> "100x100>", :medium => "900x675>" } ,
  :storage => :s3,
  :s3_credentials => "#{Rails.root}/config/s3.yml",
  :path => "/images/:id/:style/:basename.:extension"
end