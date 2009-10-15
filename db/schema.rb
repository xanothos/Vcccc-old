# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091010234715) do

  create_table "address_types", :force => true do |t|
    t.string   "address_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", :force => true do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "postal_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "address_type_id"
    t.string   "strState"
    t.integer  "contact_id"
  end

  create_table "contacts", :force => true do |t|
    t.string   "strFirstname"
    t.string   "strLastname"
    t.string   "initial"
    t.integer  "contact_type_id"
    t.integer  "security_question_id"
    t.string   "security_question_answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contactsurveys", :force => true do |t|
    t.boolean  "bReceiveEmail"
    t.integer  "iMembership"
    t.string   "strAdvertising"
    t.integer  "contact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails", :force => true do |t|
    t.string   "strAddress"
    t.integer  "contact_id"
    t.integer  "email_type_id"
    t.boolean  "bUseForNotification"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listitems", :force => true do |t|
    t.string   "strListName"
    t.string   "strListValue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", :force => true do |t|
    t.string   "strPhoneNumber"
    t.integer  "contact_id"
    t.integer  "phone_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workorders", :force => true do |t|
    t.string   "strProblemDescription"
    t.string   "strBriefDescription"
    t.datetime "dtEstimatedStartTime"
    t.date     "dtEndDate"
    t.date     "dtStartDate"
    t.integer  "contact_id"
    t.integer  "technician_id"
    t.string   "strSolution"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
