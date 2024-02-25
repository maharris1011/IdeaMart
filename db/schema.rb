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

ActiveRecord::Schema.define(version: 2017_04_14_145608) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "idea_id"
    t.text "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["idea_id"], name: "index_comments_on_idea_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "ideas", id: :serial, force: :cascade do |t|
    t.text "solution"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "user_id"
    t.text "problem"
    t.text "unique_value_prop"
    t.text "unfair_advantage"
    t.text "early_adopters"
    t.text "existing_alternatives"
    t.text "key_metrics"
    t.string "high_level_concept"
    t.text "channels"
    t.text "cost_structure"
    t.text "revenue_streams"
    t.text "customer_segments"
    t.string "state"
    t.integer "launchpad_sponsor_id"
    t.string "story_url"
    t.index ["launchpad_sponsor_id"], name: "index_ideas_on_launchpad_sponsor_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "name"
    t.boolean "launchpad"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "idea_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "score"
    t.index ["idea_id"], name: "index_votes_on_idea_id"
    t.index ["user_id"], name: "index_votes_on_user_id"
  end

end
