class AddPaperClipToAssets < ActiveRecord::Migration  
  def self.up
    
    create_table :assets do |t|
      t.integer :album_id
      t.timestamps
    end
    
    add_column :assets, :image_file_name,    :string
    add_column :assets, :image_content_type, :string
    add_column :assets, :image_file_size,    :integer
    add_column :assets, :image_updated_at,   :datetime
  end

  def self.down
     remove_column :assets, :image_file_name
     remove_column :assets, :image_content_type
     remove_column :assets, :image_file_size
     remove_column :assets, :image_updated_at
  end
end
