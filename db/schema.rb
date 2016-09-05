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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160905203129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buyers", force: :cascade do |t|
    t.string   "current_owner"
    t.string   "borrower"
    t.integer  "property_address_number"
    t.string   "property_address_street"
    t.string   "property_address_type"
    t.string   "property_address_city"
    t.string   "property_address_state"
    t.integer  "property_address_zip"
    t.string   "county"
    t.integer  "purchase_price"
    t.integer  "owners_coverage_amount"
    t.string   "type_owners_policy_requested"
    t.string   "type_of_title"
    t.string   "lender_name"
    t.string   "type_of_loan"
    t.integer  "loan_number"
    t.integer  "loan_amount"
    t.integer  "variable_loan_coverage"
    t.string   "type_of_loan_policy"
    t.string   "icl_requested"
    t.string   "alta_endorsement"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "user_id"
  end

  add_index "buyers", ["user_id"], name: "index_buyers_on_user_id", using: :btree

  create_table "title_reports", force: :cascade do |t|
    t.integer  "taxes_paid"
    t.string   "special_levies"
    t.string   "restrictive_covenants"
    t.integer  "covenant_book"
    t.integer  "covenant_page"
    t.string   "restrictions_violated"
    t.string   "restrictions_forfeiture"
    t.string   "right_of_way"
    t.string   "prior_policy"
    t.string   "manufactured_home"
    t.string   "property_occupied_by"
    t.string   "property_construction"
    t.string   "mechanics_lien_agent"
    t.string   "survey_required"
    t.string   "use_of_property"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "restrictions_violated_explain"
    t.string   "right_of_way_explain"
    t.string   "mechanics_lien_agent_name"
    t.string   "use_of_property_explain"
    t.integer  "buyer_id"
  end

  add_index "title_reports", ["buyer_id"], name: "index_title_reports_on_buyer_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.string   "company"
    t.integer  "phone"
    t.integer  "fax"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "buyers", "users"
  add_foreign_key "title_reports", "buyers"
end
