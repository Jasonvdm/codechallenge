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

ActiveRecord::Schema.define(:version => 20130801105743) do

  create_table "fr_questions", :force => true do |t|
    t.integer "quiz_id"
    t.integer "free_response_question_id"
  end

  create_table "free_response_answers", :force => true do |t|
    t.integer  "free_response_question_id"
    t.integer  "quiz_id"
    t.text     "user_response"
    t.integer  "points_scored"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "free_response_questions", :force => true do |t|
    t.string   "title"
    t.text     "prompt"
    t.text     "instructions"
    t.text     "correct_answer"
    t.string   "category"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "mc_questions", :force => true do |t|
    t.integer "quiz_id"
    t.integer "multiple_choice_question_id"
  end

  create_table "multiple_choice_answers", :force => true do |t|
    t.integer  "multiple_choice_question_id"
    t.integer  "quiz_id"
    t.string   "user_response"
    t.boolean  "is_correct"
    t.integer  "points_scored"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "multiple_choice_questions", :force => true do |t|
    t.string   "title"
    t.text     "prompt"
    t.string   "correct_answer"
    t.string   "wrong_answers"
    t.string   "category"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "multiple_choices_questions", :force => true do |t|
    t.string   "title"
    t.integer  "quiz_id"
    t.text     "prompt"
    t.string   "user_response"
    t.string   "correct_answer"
    t.string   "category"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "wrong_answers"
  end

  create_table "quizzes", :force => true do |t|
    t.string   "title"
    t.integer  "points_possible"
    t.integer  "points_scored"
    t.string   "description"
    t.integer  "user_id"
    t.string   "category"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.boolean  "is_completed",    :default => false
    t.boolean  "in_progress",     :default => false
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "school"
    t.string   "year_in_school"
    t.string   "major"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "is_admin"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
