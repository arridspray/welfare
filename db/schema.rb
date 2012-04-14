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

ActiveRecord::Schema.define(:version => 20120324031100) do

  create_table "food_forms", :force => true do |t|
    t.integer  "state_id"
    t.string   "department_name"
    t.string   "street_address_one"
    t.string   "street_address_two"
    t.string   "city"
    t.string   "zip_code"
    t.string   "phone_number"
    t.string   "fax_number"
    t.text     "program_benefits"
    t.text     "general_eligibility"
    t.text     "application_info"
    t.text     "citizenship_info"
    t.string   "form_url_two"
    t.string   "form_url_three"
    t.string   "link_one"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "housing_forms", :force => true do |t|
    t.integer  "state_id"
    t.string   "department_name"
    t.string   "street_address_one"
    t.string   "street_address_two"
    t.string   "city"
    t.string   "zip_code"
    t.string   "phone_number"
    t.string   "fax_number"
    t.text     "program_benefits"
    t.text     "general_eligibility"
    t.text     "application_info"
    t.text     "citizenship_info"
    t.string   "form_url_two"
    t.string   "form_url_three"
    t.string   "link_one"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "medicare_forms", :force => true do |t|
    t.integer  "state_id"
    t.string   "department_name"
    t.string   "street_address_one"
    t.string   "street_address_two"
    t.string   "city"
    t.string   "zip_code"
    t.string   "phone_number"
    t.string   "fax_number"
    t.text     "program_benefits"
    t.text     "general_eligibility"
    t.text     "application_info"
    t.text     "citizenship_info"
    t.string   "form_url_two"
    t.string   "form_url_three"
    t.string   "link_one"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "sectioneight_forms", :force => true do |t|
    t.integer  "state_id"
    t.string   "department_name"
    t.string   "street_address_one"
    t.string   "street_address_two"
    t.string   "city"
    t.string   "zip_code"
    t.string   "phone_number"
    t.string   "fax_number"
    t.text     "program_benefits"
    t.text     "general_eligibility"
    t.text     "application_info"
    t.text     "citizenship_info"
    t.string   "form_url_two"
    t.string   "form_url_three"
    t.string   "link_one"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "ssi_forms", :force => true do |t|
    t.integer  "state_id"
    t.string   "department_name"
    t.string   "street_address_one"
    t.string   "street_address_two"
    t.string   "city"
    t.string   "zip_code"
    t.string   "phone_number"
    t.string   "fax_number"
    t.text     "program_benefits"
    t.text     "general_eligibility"
    t.text     "application_info"
    t.text     "citizenship_info"
    t.string   "form_url_two"
    t.string   "form_url_three"
    t.string   "link_one"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "states", :force => true do |t|
    t.string   "state_name"
    t.string   "state_abbreviation"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "tanf_forms", :force => true do |t|
    t.integer  "state_id"
    t.string   "department_name"
    t.string   "street_address_one"
    t.string   "street_address_two"
    t.string   "city"
    t.string   "zip_code"
    t.string   "phone_number"
    t.string   "fax_number"
    t.text     "program_benefits"
    t.text     "general_eligibility"
    t.text     "application_info"
    t.text     "citizenship_info"
    t.string   "form_url_two"
    t.string   "form_url_three"
    t.string   "link_one"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "unemployment_forms", :force => true do |t|
    t.integer  "state_id"
    t.string   "department_name"
    t.string   "street_address_one"
    t.string   "street_address_two"
    t.string   "city"
    t.string   "zip_code"
    t.string   "phone_number"
    t.string   "fax_number"
    t.text     "program_benefits"
    t.text     "general_eligibility"
    t.text     "application_info"
    t.text     "citizenship_info"
    t.string   "form_url_two"
    t.string   "form_url_three"
    t.string   "link_one"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "persistence_token"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "wic_forms", :force => true do |t|
    t.integer  "state_id"
    t.string   "department_name"
    t.string   "street_address_one"
    t.string   "street_address_two"
    t.string   "city"
    t.string   "zip_code"
    t.string   "phone_number"
    t.string   "fax_number"
    t.text     "program_benefits"
    t.text     "general_eligibility"
    t.text     "application_info"
    t.text     "citizenship_info"
    t.string   "form_url_two"
    t.string   "form_url_three"
    t.string   "link_one"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

end
