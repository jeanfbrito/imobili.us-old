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

ActiveRecord::Schema.define(:version => 20121219233454) do

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cities", ["state_id"], :name => "index_cities_on_state_id"

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.date     "date_born"
    t.integer  "cpf"
    t.integer  "rg"
    t.string   "address"
    t.integer  "district_id"
    t.integer  "cep"
    t.string   "reference"
    t.integer  "phone_comercial"
    t.integer  "phone_residential"
    t.integer  "phone_cel"
    t.string   "email"
    t.boolean  "owner"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "clients", ["district_id"], :name => "index_clients_on_district_id"

  create_table "districts", :force => true do |t|
    t.string   "name"
    t.integer  "city_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "districts", ["city_id"], :name => "index_districts_on_city_id"

  create_table "realties", :force => true do |t|
    t.integer  "client_id"
    t.integer  "client_price"
    t.integer  "sale_price"
    t.integer  "constructed_area"
    t.integer  "total_area"
    t.float    "terrain_width"
    t.float    "terrain_lenght"
    t.integer  "dorms_count"
    t.integer  "suites_count"
    t.integer  "bathroom_count"
    t.integer  "floor_number"
    t.string   "building_name"
    t.date     "date_construction"
    t.integer  "garage_count"
    t.text     "description"
    t.string   "address"
    t.integer  "district_id"
    t.integer  "cep"
    t.string   "adjunt"
    t.string   "reference"
    t.string   "lat"
    t.string   "long"
    t.integer  "RealtyPurpose_id"
    t.integer  "RealtyType_id"
    t.boolean  "web_show_sell_price"
    t.boolean  "web_show_address"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "realties", ["RealtyPurpose_id"], :name => "index_realties_on_RealtyPurpose_id"
  add_index "realties", ["RealtyType_id"], :name => "index_realties_on_RealtyType_id"
  add_index "realties", ["client_id"], :name => "index_realties_on_client_id"
  add_index "realties", ["district_id"], :name => "index_realties_on_district_id"

  create_table "realty_purposes", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "realty_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "uf"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
