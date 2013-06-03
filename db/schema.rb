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

ActiveRecord::Schema.define(:version => 20130602050115) do

  create_table "educations", :force => true do |t|
    t.string   "resume_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "school_name"
    t.string   "city"
    t.string   "state"
    t.string   "major"
    t.string   "minor"
    t.string   "degree"
    t.string   "gpa"
    t.string   "honor_1"
    t.string   "honor_2"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "experiences", :force => true do |t|
    t.string   "resume_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "employer"
    t.string   "city"
    t.string   "state"
    t.string   "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "resumes", :force => true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "email"
    t.string   "phone"
    t.string   "alt_1"
    t.string   "alt_tag_1"
    t.string   "alt_2"
    t.string   "alt_tag_2"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "skillcategories", :force => true do |t|
    t.string   "resume_id"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "skills", :force => true do |t|
    t.string   "skillcategory_id"
    t.string   "description"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "subtasks", :force => true do |t|
    t.integer  "task_id"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tasks", :force => true do |t|
    t.integer  "experience_id"
    t.string   "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
