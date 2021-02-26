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

ActiveRecord::Schema.define(version: 2021_02_26_030654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dim_customers", force: :cascade do |t|
    t.string "dwh_customer_creation_date"
    t.string "dwh_customer_company_name"
    t.string "dwh_customer_company_contact"
    t.string "dwh_customer_company_email"
    t.integer "nb_elevators"
    t.string "customer_city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fact_contacts", force: :cascade do |t|
    t.integer "dwh_contact_id"
    t.datetime "dwh_created_at"
    t.string "dwh_company_name"
    t.string "dwh_email"
    t.string "dwh_project_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fact_elevators", force: :cascade do |t|
    t.string "dwh_serial_number"
    t.datetime "dwh_commission_date"
    t.integer "dwh_building_id"
    t.integer "dwh_customer_id"
    t.string "dwh_building_city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fact_quotes", force: :cascade do |t|
    t.integer "dwh_quote_id"
    t.datetime "dwh_creation_at"
    t.string "dwh_company_name"
    t.string "dwh_email"
    t.string "dwh_elevators_required"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
