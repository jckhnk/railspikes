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

ActiveRecord::Schema.define(:version => 20150220182851) do

  create_table "kics", :force => true do |t|
    t.float   "kic_ra"
    t.float   "kic_dec"
    t.float   "kic_pmra"
    t.float   "kic_pmdec"
    t.float   "kic_umag"
    t.float   "kic_gmag"
    t.float   "kic_rmag"
    t.float   "kic_imag"
    t.float   "kic_zmag"
    t.float   "kic_gredmag"
    t.float   "kic_d51mag"
    t.float   "kic_jmag"
    t.float   "kic_hmag"
    t.float   "kic_kmag"
    t.float   "kic_kepmag"
    t.integer "kic_kepler_id"
    t.float   "kic_tmid"
    t.float   "kic_scpid"
    t.string  "kic_altid"
    t.float   "kic_altsource"
    t.integer "kic_galaxy"
    t.integer "kic_blend"
    t.integer "kic_variable"
    t.integer "kic_teff"
    t.float   "kic_logg"
    t.float   "kic_feh"
    t.float   "kic_ebminusv"
    t.float   "kic_av"
    t.float   "kic_radius"
    t.string  "kic_cq"
    t.integer "kic_pq"
    t.integer "kic_aq"
    t.float   "kic_catkey"
    t.float   "kic_scpkey"
    t.float   "kic_parallax"
    t.float   "kic_glon"
    t.float   "kic_glat"
    t.float   "kic_pmtotal"
    t.float   "kic_grcolor"
    t.float   "kic_jkcolor"
    t.float   "kic_gkcolor"
    t.float   "kic_degree_ra"
    t.integer "kic_fov_flag"
    t.string  "kic_tm_designation"
  end

  create_table "pages", :force => true do |t|
    t.integer  "a"
    t.integer  "b"
    t.integer  "c"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "d"
  end

  create_table "simple_sources", :force => true do |t|
    t.float    "ra_1"
    t.float    "dec_1"
    t.float    "flux_1"
    t.float    "unc_1"
    t.integer  "n_obs_1"
    t.float    "ra_2"
    t.float    "dec_2"
    t.float    "flux_2"
    t.float    "unc_2"
    t.integer  "n_obs_2"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

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
