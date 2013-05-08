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

ActiveRecord::Schema.define(:version => 20130508195320) do

  create_table "albums", :force => true do |t|
    t.string  "name"
    t.integer "band_id"
    t.string  "image"
  end

  create_table "bands", :force => true do |t|
    t.string "name"
    t.string "image"
    t.string "hometown"
  end

  create_table "members", :force => true do |t|
    t.integer "band_id"
    t.integer "musician_id"
  end

  create_table "musicians", :force => true do |t|
    t.string "name"
    t.string "instrument"
  end

  create_table "songs", :force => true do |t|
    t.string  "name"
    t.integer "band_id"
    t.integer "album_id"
  end

  create_table "users", :force => true do |t|
    t.string  "username"
    t.integer "band_id"
  end

end