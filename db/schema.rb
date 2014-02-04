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

ActiveRecord::Schema.define(version: 20140112034443) do

  # These are extensions that must be enabled in order to support this database

  create_table "leads", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "home_phone"
    t.integer  "cell_phone"
    t.string   "email"
    t.string   "time_to_call"
    t.string   "status"
    t.string   "exam"
    t.string   "ordering_physician"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registrations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fname"
    t.string   "lname"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "home_phone"
    t.string   "cell_phone"
    t.string   "height"
    t.string   "weight"
    t.string   "referring_physician"
    t.string   "procedure_type"
    t.string   "insurance_provider"
    t.string   "group_number"
    t.string   "id_number"
    t.string   "insurance_phone"
    t.string   "gunshot_bbs_shrapnel_wounds"
    t.string   "vascular_surgery"
    t.string   "pacemaker_heart_surgery"
    t.string   "brain_surgery_aneurysm_clips"
    t.string   "diabetic"
    t.string   "glucophage_metformin"
    t.string   "cancer_tumors"
    t.string   "tattoos_body_piercings"
    t.string   "kidney_liver_problems"
    t.string   "contrast_allergy"
    t.string   "ear_implants_hearing_aids"
    t.string   "blood_bleeding_disorder"
    t.string   "IUD"
  end

  create_table "surveys", force: true do |t|
    t.string  "recommend"
    t.integer "scheduling"
    t.integer "receptionist_greeting"
    t.integer "completing_forms"
    t.integer "awaiting_procedure"
    t.integer "technologist"
    t.integer "explanation"
    t.integer "patient_privcacy"
    t.integer "cleanliness"
    t.integer "overall_experience"
    t.text    "hear_about"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fname"
    t.string   "lname"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "home_phone"
    t.string   "cell_phone"
    t.string   "height"
    t.string   "weight"
    t.string   "referring_physician"
    t.string   "procedure_type"
    t.string   "insurance_provider"
    t.string   "group_number"
    t.string   "id_number"
    t.string   "insurance_phone"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
