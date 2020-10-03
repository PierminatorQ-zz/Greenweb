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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_03_024021) do

  create_table "cctvitems", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "brand"
    t.integer "price"
    t.integer "stock", default: 0
    t.integer "status", default: 1
    t.integer "resolution"
    t.string "type_of"
    t.integer "channels"
    t.integer "max_channels_ip"
    t.text "additionals"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lightitems", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "brand"
    t.integer "power"
    t.integer "flux"
    t.integer "voltage"
    t.integer "price"
    t.integer "stock", default: 0
    t.integer "status", default: 1
    t.integer "useful_life"
    t.integer "ip_protection"
    t.integer "color_temp"
    t.text "additionals"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solaritems", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "brand"
    t.integer "peak_power"
    t.integer "flux"
    t.integer "voltage_work"
    t.integer "price"
    t.integer "stock", default: 0
    t.integer "status", default: 1
    t.integer "voc"
    t.integer "isc"
    t.integer "efficiency"
    t.string "battery"
    t.text "additionals"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
