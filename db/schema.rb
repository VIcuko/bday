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

ActiveRecord::Schema.define(version: 20160305163524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "relationships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "relationship_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "relationships", ["user_id"], name: "index_relationships_on_user_id", using: :btree

  create_table "social_networks", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider",                    null: false
    t.string   "uid",                         null: false
    t.string   "token",                       null: false
    t.string   "expiry_date",                 null: false
    t.boolean  "expires",     default: true,  null: false
    t.string   "email",       default: "",    null: false
    t.string   "password",    default: "",    null: false
    t.string   "image",       default: "",    null: false
    t.boolean  "verified",    default: false
    t.string   "gender",      default: "u",   null: false
    t.string   "timezone"
    t.string   "language",    default: "es"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "social_networks", ["user_id"], name: "index_social_networks_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",                   default: "",           null: false
    t.string   "surname",                default: "",           null: false
    t.string   "city",                   default: "",           null: false
    t.string   "country",                default: "",           null: false
    t.string   "gender",                 default: "",           null: false
    t.string   "language",               default: "es",         null: false
    t.date     "bday",                   default: '2000-01-01', null: false
    t.boolean  "signed_up",              default: false,        null: false
    t.string   "email",                  default: "",           null: false
    t.string   "encrypted_password",     default: "",           null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,            null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
