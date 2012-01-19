class Asset < ActiveRecord::Base
  
  belongs_to :album
  has_attached_file :image, :styles => { :thumb=> "100x100>", :medium => "900x675>" } ,
  :url  => "/assets/images/:id/:style/:basename.:extension",
  :path => ":rails_root/public/assets/images/:id/:style/:basename.:extension"
end