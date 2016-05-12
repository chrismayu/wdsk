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

ActiveRecord::Schema.define(version: 20160512230515) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "leagues", force: :cascade do |t|
    t.string   "name",                   default: "",    null: false
    t.string   "season"
    t.integer  "year"
    t.string   "final_name"
    t.string   "league_type_dropdown"
    t.integer  "league_type"
    t.text     "description"
    t.integer  "limit",                                  null: false
    t.decimal  "price"
    t.date     "start_players_birthday",                 null: false
    t.date     "last_players_birthday",                  null: false
    t.date     "show_on_main_page",                      null: false
    t.date     "open_registration",                      null: false
    t.date     "close_registration",                     null: false
    t.date     "hide_on_main_page",                      null: false
    t.boolean  "receive_emails",         default: false
    t.string   "email",                  default: "",    null: false
    t.boolean  "competitive",            default: false
    t.boolean  "disabled",               default: false
    t.string   "slug"
    t.text     "notes"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "leagues", ["slug"], name: "index_leagues_on_slug", unique: true, using: :btree

  create_table "payment_notifications", force: :cascade do |t|
    t.integer  "player_id"
    t.text     "params"
    t.string   "status"
    t.string   "transaction_id"
    t.integer  "league_id"
    t.string   "token_id"
    t.float    "mc_gross"
    t.string   "invoice"
    t.string   "protection_eligibility"
    t.string   "address_status"
    t.integer  "item_number1"
    t.string   "payer_id"
    t.string   "tax"
    t.string   "address_street"
    t.datetime "payment_date"
    t.string   "payment_status"
    t.string   "charset"
    t.string   "address_zip"
    t.string   "first_name"
    t.float    "mc_fee"
    t.string   "address_country_code"
    t.string   "address_name"
    t.string   "notify_version"
    t.string   "custom"
    t.string   "payer_status"
    t.string   "business"
    t.string   "address_country"
    t.string   "num_cart_items"
    t.string   "mc_handling1"
    t.string   "address_city"
    t.string   "verify_sign"
    t.string   "payer_email"
    t.string   "mc_shipping1"
    t.string   "txn_id"
    t.string   "payment_type"
    t.string   "last_name"
    t.string   "address_state"
    t.string   "item_name1"
    t.string   "receiver_email"
    t.float    "payment_fee"
    t.integer  "quantity1"
    t.string   "receiver_id"
    t.string   "txn_type"
    t.float    "mc_gross_1"
    t.string   "mc_currency"
    t.string   "residence_country"
    t.string   "transaction_subject"
    t.float    "payment_gross"
    t.string   "ipn_track_id"
    t.string   "mc_shipping"
    t.string   "mc_handling"
    t.string   "tax1"
    t.string   "pending_reason"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_initial"
    t.string   "address"
    t.string   "city"
    t.string   "postal_code"
    t.string   "phone_number"
    t.string   "email_address",                 default: "",    null: false
    t.date     "date_of_birth"
    t.integer  "years_played"
    t.boolean  "played_competitively",          default: false
    t.string   "gender"
    t.string   "name_of_parent_guardian"
    t.boolean  "willing_to_coach",              default: false
    t.boolean  "willing_to_assist_coach",       default: false
    t.boolean  "child_like_to_play_goalie",     default: false
    t.boolean  "child_has_a_medical_condition", default: false
    t.text     "medical_condition"
    t.boolean  "appectance_of_terms",           default: false
    t.integer  "league_id"
    t.string   "transaction_id"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  add_index "players", ["transaction_id"], name: "index_players_on_transaction_id", unique: true, using: :btree

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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
