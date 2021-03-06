class Album < ActiveRecord::Base
  validate :name , :presence  => true
  has_many :assets, :dependent => :destroy
  accepts_nested_attributes_for :assets, :allow_destroy => true
end
