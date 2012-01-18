class AddNameToPackage < ActiveRecord::Migration
  def self.up
  	add_column :packages, :name, :string
  end

  def self.down
  	remove_column :packages, :name
  end
end
