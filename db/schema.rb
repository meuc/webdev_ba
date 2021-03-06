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

ActiveRecord::Schema.define(version: 20161211145754) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "belt_applications", force: :cascade do |t|
    t.integer  "user_id",                    null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "picture_proof_file_name"
    t.string   "picture_proof_content_type"
    t.integer  "picture_proof_file_size"
    t.datetime "picture_proof_updated_at"
    t.index ["user_id"], name: "index_belt_applications_on_user_id", using: :btree
  end

  create_table "belts", force: :cascade do |t|
    t.string "degree", null: false
    t.string "color",  null: false
    t.index ["degree", "color"], name: "index_belts_on_degree_and_color", unique: true, using: :btree
  end

  create_table "belts_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "belt_id", null: false
    t.index ["belt_id"], name: "index_belts_users_on_belt_id", using: :btree
    t.index ["user_id"], name: "index_belts_users_on_user_id", using: :btree
  end

  create_table "notes", force: :cascade do |t|
    t.text    "text",         null: false
    t.integer "user_id",      null: false
    t.integer "technique_id", null: false
    t.index ["technique_id"], name: "index_notes_on_technique_id", using: :btree
    t.index ["user_id", "technique_id"], name: "index_notes_on_user_id_and_technique_id", using: :btree
    t.index ["user_id"], name: "index_notes_on_user_id", using: :btree
  end

  create_table "techniques", force: :cascade do |t|
    t.string  "name",                          null: false
    t.text    "description",                   null: false
    t.integer "belt_id",                       null: false
    t.integer "topic",             default: 0, null: false
    t.text    "youtube_video_url"
    t.string  "long_name",                     null: false
    t.index ["belt_id"], name: "index_techniques_on_belt_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "email",                                          null: false
    t.string   "encrypted_password", limit: 128,                 null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128,                 null: false
    t.boolean  "admin",                          default: false, null: false
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "gender"
    t.date     "birthdate"
    t.index ["email"], name: "index_users_on_email", using: :btree
    t.index ["remember_token"], name: "index_users_on_remember_token", using: :btree
  end

end
