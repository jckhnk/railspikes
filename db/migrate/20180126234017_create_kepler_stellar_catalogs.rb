class CreateKeplerStellarCatalogs < ActiveRecord::Migration
  def change
    create_table :kepler_stellar_catalogs do |t|
      t.integer :kepid
      t.string :tm_designation
      t.integer :teff
      t.integer :teff_err1
      t.integer :teff_err2
      t.float :logg
      t.float :logg_err1
      t.float :logg_err2
      t.float :feh
      t.float :feh_err1
      t.float :feh_err2
      t.float :mass
      t.float :mass_err1
      t.float :mass_err2
      t.float :radius
      t.float :radius_err1
      t.float :radius_err2
      t.float :dens
      t.float :dens_err1
      t.float :dens_err2
      t.string :prov_sec
      t.float :kepmag
      t.float :dist
      t.float :dist_err1
      t.float :dist_err2
      t.integer :nconfp
      t.integer :nkoi
      t.integer :ntce
      t.string :st_delivname
      t.datetime :st_vet_date_str
      t.float :ra
      t.float :dec
      t.integer :st_quarters, :limit => 5
      t.string :teff_prov
      t.string :logg_prov
      t.string :feh_prov
      t.float :jmag
      t.float :jmag_err
      t.float :hmag
      t.float :hmag_err
      t.float :kmag
      t.float :kmag_err
      t.float :av
      t.float :av_err1
      t.float :av_err2
      t.float :I1_flux_1
      t.float :unc_1
      t.float :I1_mag
      t.float :I1_mag_unc_1
      t.integer :n_obs_1
      t.float :flux_I2_2
      t.float :unc_2
      t.float :I2_mag
      t.float :I2_mag_unc2
      t.integer :n_obs_2
      t.float :W1mag
      t.float :W2mag
      t.float :W3mag
      t.float :W4mag
      t.float "W1-I1_mag"
      t.float "W2-I2_mag"
      t.float "Kmag-I1_mag"
      t.float "Kmag-I2_mag"
      t.float :e_W1mag
      t.float :e_W2mag
      t.float :e_W3mag
      t.float :e_W4mag
      t.float :e_Jmag
      t.float :e_Hmag
      t.float :e_Kmag
      t.integer :cntr, :limit => 5
      t.string :cc_flags
      t.integer :ext_flg
      t.string :var_flg
      t.string :ph_qual
      t.float :r_2mass

      t.timestamps
    end
  end
end
