class AddBathroomsToHome < ActiveRecord::Migration
  def self.up
  	add_column :homes, :car_parks, :integer
  	add_column :homes, :bathrooms, :integer
  	add_column :homes, :bedrooms, :integer
  end

  def self.down
    remove_column :homes, :car_parks
    remove_column :homes, :bathrooms
    remove_column :homes, :bedrooms
  end
end
