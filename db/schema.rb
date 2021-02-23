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

ActiveRecord::Schema.define(version: 2021_02_22_223730) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "address_type"
    t.string "address_status"
    t.string "address_entity"
    t.string "address_street"
    t.string "address_suite_or_apt"
    t.string "address_city"
    t.string "address_zip_code"
    t.string "address_country"
    t.text "address_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buildings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "building_customer_ID"
    t.string "building_address"
    t.string "building_admin_full_name"
    t.integer "building_admin_phone_number"
    t.string "building_technical_contact_full_name"
    t.string "building_technical_contact_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "customer_user_id"
    t.date "customer_creation_date"
    t.string "customer_company_name"
    t.string "customer_company_hq_address"
    t.string "customer_full_name_of_company_contact"
    t.string "customer_company_phone"
    t.string "customer_company_email"
    t.text "customer_company_description"
    t.string "customer_full_name_of_service_technical_authority"
    t.string "customer_technical_authority_phone"
    t.string "customer_technical_manager_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
