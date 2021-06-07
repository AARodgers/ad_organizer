# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_07_211218) do

  create_table "ads", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ads_categories", force: :cascade do |t|
    t.integer "ad_id_id", null: false
    t.integer "category_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ad_id_id"], name: "index_ads_categories_on_ad_id_id"
    t.index ["category_id_id"], name: "index_ads_categories_on_category_id_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories_sites", force: :cascade do |t|
    t.boolean "enabled"
    t.integer "site_id_id", null: false
    t.integer "category_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id_id"], name: "index_categories_sites_on_category_id_id"
    t.index ["site_id_id"], name: "index_categories_sites_on_site_id_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sites", force: :cascade do |t|
    t.integer "owner_id_id", null: false
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id_id"], name: "index_sites_on_owner_id_id"
  end

  add_foreign_key "ads_categories", "ad_ids"
  add_foreign_key "ads_categories", "category_ids"
  add_foreign_key "categories_sites", "category_ids"
  add_foreign_key "categories_sites", "site_ids"
  add_foreign_key "sites", "owner_ids"
end
