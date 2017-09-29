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

ActiveRecord::Schema.define(version: 20170928231846) do

  create_table "event_lists", force: true do |t|
    t.date     "eventDate"
    t.time     "eventTime"
    t.text     "eventName"
    t.text     "eventDescription"
    t.text     "streetAddress"
    t.text     "City"
    t.text     "State"
    t.text     "Zip"
    t.integer  "nbrOfRiders"
    t.text     "vehicleType"
    t.text     "PUstreetAddress"
    t.text     "PUCity"
    t.text     "PUState"
    t.text     "PUZip"
    t.text     "smokingAllowed"
    t.text     "createdBy"
    t.text     "eventDriver"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_profiles", force: true do |t|
    t.text     "userName"
    t.integer  "age"
    t.text     "gender"
    t.text     "streetAddress"
    t.text     "City"
    t.text     "State"
    t.text     "Zip"
    t.text     "profilePicUrl"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.text     "userName"
    t.text     "firstName"
    t.text     "lastName"
    t.text     "Email"
    t.text     "phone"
    t.text     "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles", force: true do |t|
    t.text     "userName"
    t.text     "vehicleType"
    t.integer  "maxRiders"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
