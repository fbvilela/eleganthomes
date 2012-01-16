class AddColumnsToHomes < ActiveRecord::Migration
  def self.up
     add_column :homes, :pdf_file_name,    :string
     add_column :homes, :pdf_content_type, :string
     add_column :homes, :pdf_file_size,    :integer
     add_column :homes, :pdf_updated_at,   :datetime

     rename_column :homes, :heading, :title
     rename_column :homes, :short_description , :feature_list

     remove_column :homes, :suburb
     remove_column :homes, :width
     remove_column :homes, :size

     add_column :homes, :inclusions_list , :text

  end

  def self.down
  end
end
