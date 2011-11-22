class AddAttributesPackage < ActiveRecord::Migration
  def self.up
    add_column :packages, :price, :integer
    add_column :packages, :land_size, :integer
    add_column :packages, :bedrooms, :integer
    add_column :packages, :bathrooms, :integer
    add_column :packages, :storeys, :integer
  end

  def self.down
    remove_column :packages, :price
    remove_column :packages, :land_size
    remove_column :packages, :bedrooms
    remove_column :packages, :storeys
    remove_column :packages, :bathrooms
  end
end