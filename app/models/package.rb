class Package < ActiveRecord::Base
  has_attached_file :image, :styles => { :thumb => "145x105>" }
  has_attached_file :pdf
end
