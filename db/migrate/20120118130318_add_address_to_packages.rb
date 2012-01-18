class AddAddressToPackages < ActiveRecord::Migration
  def self.up
  	add_column :packages, :address , :string
  end

  def self.down
  	remove_column :packages, :address
  end
end
