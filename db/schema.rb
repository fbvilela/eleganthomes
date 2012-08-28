# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120828100139) do

  create_table "albums", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assets", :force => true do |t|
    t.integer  "album_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "homes", :force => true do |t|
    t.string   "title"
    t.text     "feature_list"
    t.text     "description"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "car_parks"
    t.integer  "bathrooms"
    t.integer  "bedrooms"
    t.string   "floorplan_file_name"
    t.string   "floorplan_content_type"
    t.integer  "floorplan_file_size"
    t.datetime "floorplan_updated_at"
    t.string   "pdf_file_name"
    t.string   "pdf_content_type"
    t.integer  "pdf_file_size"
    t.datetime "pdf_updated_at"
    t.text     "inclusions_list"
  end

  create_table "packages", :force => true do |t|
    t.string   "suburb"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "pdf_file_name"
    t.string   "pdf_content_type"
    t.integer  "pdf_file_size"
    t.datetime "pdf_updated_at"
    t.integer  "price"
    t.integer  "land_size"
    t.integer  "bedrooms"
    t.integer  "bathrooms"
    t.integer  "storeys"
    t.integer  "car_parks"
    t.integer  "lot_number"
    t.string   "region"
    t.integer  "full_tk_price"
    t.text     "feature_list"
    t.text     "full_tk_inclusions"
    t.string   "floorplan_file_name"
    t.string   "floorplan_content_type"
    t.integer  "floorplan_file_size"
    t.datetime "floorplan_updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "name"
    t.string   "address"
  end

  create_table "promotions", :force => true do |t|
    t.string   "heading"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pdf_file_name"
    t.string   "pdf_content_type"
    t.integer  "pdf_file_size"
    t.datetime "pdf_updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

end
