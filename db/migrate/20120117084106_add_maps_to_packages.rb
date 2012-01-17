class AddMapsToPackages < ActiveRecord::Migration
  def self.up
    add_column :packages, :latitude, :float
    add_column :packages, :longitude, :float
    
  end

  def self.down
  end
end
