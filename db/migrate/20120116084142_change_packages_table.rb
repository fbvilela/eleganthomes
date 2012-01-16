class ChangePackagesTable < ActiveRecord::Migration
  def self.up
    rename_column :packages, :heading, :title
    
    add_column :packages, :lot_number, :integer
    add_column :packages, :region , :string
    add_column :packages, :full_tk_price, :integer
    add_column :packages, :feature_list, :text
    add_column :packages, :full_tk_inclusions, :text 
  end

  def self.down
    rename_column :packages, :title, :heading
    remove_column :packages, :region
    remove_column :packages, :full_tk_price
    remove_column :packages, :feature_list
    remove_column :packages, :full_tk_inclusions
    remove_column :packages, :lot_number
  end
end
