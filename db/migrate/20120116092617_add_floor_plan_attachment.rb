class AddFloorPlanAttachment < ActiveRecord::Migration
   def self.up
     add_column :packages, :floorplan_file_name,    :string
     add_column :packages, :floorplan_content_type, :string
     add_column :packages, :floorplan_file_size,    :integer
     add_column :packages, :floorplan_updated_at,   :datetime
     
     
     add_column :homes, :floorplan_file_name,    :string
     add_column :homes, :floorplan_content_type, :string
     add_column :homes, :floorplan_file_size,    :integer
     add_column :homes, :floorplan_updated_at,   :datetime
   end

   def self.down
     remove_column :homes, :floorplan_file_name
     remove_column :homes, :floorplan_content_type
     remove_column :homes, :floorplan_file_size
     remove_column :homes, :floorplan_updated_at
   end

end
