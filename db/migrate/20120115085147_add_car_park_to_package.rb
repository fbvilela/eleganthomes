class AddCarParkToPackage < ActiveRecord::Migration
  def self.up
  	add_column :packages, :car_parks, :integer
  end

  def self.down
  	remove_column :packages, :car_parks
  end
end
