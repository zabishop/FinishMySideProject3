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

ActiveRecord::Schema.define(:version => 20120614144802) do

  create_table "comments", :force => true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "side_project_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "comments", ["side_project_id"], :name => "index_comments_on_side_project_id"

  create_table "side_projects", :force => true do |t|
    t.string   "project_title"
    t.text     "description"
    t.string   "repo_url"
    t.string   "image_url"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "side_projects", ["user_id"], :name => "index_side_projects_on_user_id"

  create_table "side_projects_tags", :force => true do |t|
    t.integer "tag_id"
    t.integer "side_project_id"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.integer  "side_project_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "tags", ["side_project_id"], :name => "index_tags_on_side_project_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "profile_pic"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
