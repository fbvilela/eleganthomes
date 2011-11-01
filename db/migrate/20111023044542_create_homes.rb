class CreateHomes < ActiveRecord::Migration
  def self.up
    create_table :homes do |t|
      t.string :suburb
      t.string :heading
      t.text :short_description
      t.text :description
      t.integer :price
      t.integer :size
      t.integer :width

      t.timestamps
    end
  end

  def self.down
    drop_table :homes
  end
end
