class Package < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "285x167>" }
  has_attached_file :pdf
end
