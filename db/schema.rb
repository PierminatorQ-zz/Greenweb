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

ActiveRecord::Schema.define(version: 2020_10_06_004836) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "producats", force: :cascade do |t|
    t.integer "lightitem_id"
    t.integer "solaritem_id"
    t.integer "cctvitem_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_producats_on_category_id"
    t.index ["cctvitem_id"], name: "index_producats_on_cctvitem_id"
    t.index ["lightitem_id"], name: "index_producats_on_lightitem_id"
    t.index ["solaritem_id"], name: "index_producats_on_solaritem_id"
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

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
