# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_17_153348) do

  create_table "cargos", force: :cascade do |t|
    t.integer "selling_company_id"
    t.integer "buying_company_id"
    t.string "container_number"
    t.integer "container_value"
    t.string "goods"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "docks", force: :cascade do |t|
    t.boolean "occupied"
    t.string "size"
    t.string "dock_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "insurances", force: :cascade do |t|
    t.integer "company_id", null: false
    t.string "insurance_type"
    t.string "premium"
    t.string "insurance_number"
    t.integer "cargo_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cargo_id"], name: "index_insurances_on_cargo_id"
    t.index ["company_id"], name: "index_insurances_on_company_id"
  end

  create_table "ports", force: :cascade do |t|
    t.string "name"
    t.string "license"
    t.string "address"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ships", force: :cascade do |t|
    t.string "name"
    t.string "ship_type"
    t.integer "insurance_id", null: false
    t.string "captain"
    t.string "beginning"
    t.string "destination"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["insurance_id"], name: "index_ships_on_insurance_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "role"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "companies", "users"
  add_foreign_key "insurances", "companies"
  add_foreign_key "ships", "insurances"
end
