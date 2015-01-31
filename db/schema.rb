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

ActiveRecord::Schema.define(:version => 20150131021658) do

  create_table "sources", :force => true do |t|
    t.float    "ra_1"
    t.float    "dec_1"
    t.float    "flux_1"
    t.float    "unc_1"
    t.float    "n_obs_1"
    t.float    "sub_1"
    t.float    "xsc_1"
    t.float    "w1mag_1"
    t.float    "e_w1mag_1"
    t.float    "ra_2"
    t.float    "dec_2"
    t.float    "flux_2"
    t.float    "unc_2"
    t.float    "n_obs_2"
    t.float    "sub_2"
    t.float    "xsc_2"
    t.float    "w2mag_2"
    t.float    "e_w2mag_2"
    t.float    "i1"
    t.float    "i2"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
