class CreateKois < ActiveRecord::Migration
  def change
    create_table :kois do |t|
      t.integer  "kic_kepler_id"
      t.string   "kic_tm_designation"

      t.string   "kepler_name"
      t.integer  "confirmed"
      t.float    "kic_ra"
      t.float    "kic_dec"

      t.float    "i1_mag"
      t.float    "i2_mag"
      t.float    "i1_unc"
      t.float    "i2_unc"
      t.integer  "i1_obs"
      t.integer  "i2_obs"
      t.float    "i1i2color"
      t.float    "ji2color"
      t.float    "ukirt_j"

      t.float    "kic_umag"
      t.float    "kic_gmag"
      t.float    "kic_rmag"
      t.float    "kic_imag"
      t.float    "kic_zmag"
      t.float    "kic_gredmag"
      t.float    "kic_d51mag"
      t.float    "kic_jmag"
      t.float    "kic_hmag"
      t.float    "kic_kmag"
      t.float    "kic_kepmag"
      t.integer  "kic_tmid"
      t.float    "kic_scpid"
      t.integer  "kic_altid"
      t.integer  "kic_altsource"
      t.integer  "kic_galaxy"
      t.integer  "kic_blend"
      t.integer  "kic_variable"
      t.integer  "kic_teff"
      t.float    "kic_logg"
      t.float    "kic_feh"
      t.float    "kic_ebminusv"
      t.float    "kic_av"
      t.float    "kic_radius"
      t.string   "kic_cq"
      t.integer  "kic_pq"
      t.integer  "kic_aq"
      t.integer  "kic_catkey"
      t.integer  "kic_scpkey"
      t.float    "kic_parallax"
      t.float    "kic_glon"
      t.float    "kic_glat"
      t.float    "kic_pmtotal"
      t.float    "kic_grcolor"
      t.float    "kic_jkcolor"
      t.float    "kic_gkcolor"
      t.float    "kic_degree_ra"
      t.integer  "kic_fov_flag"

      t.float    "kic_pmra"
      t.float    "kic_pmdec"

      t.timestamps
    end
  end
end