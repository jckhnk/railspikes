class KeplerStellarCatalog < ActiveRecord::Base
  attr_accessible :kepid, :tm_designation, :teff, :teff_err1, :teff_err2, :logg, :logg_err1, :logg_err2, :feh, :feh_err1, :feh_err2, :mass,
    :mass_err1, :mass_err2, :radius, :radius_err1, :radius_err2, :dens, :dens_err1, :dens_err2, :prov_sec, :kepmag, :dist, :dist_err1,
    :dist_err2, :nconfp, :nkoi, :ntce, :st_delivname, :st_vet_date_str, :ra, :dec, :st_quarters, :teff_prov, :logg_prov, :feh_prov, :jmag,
    :jmag_err, :hmag, :hmag_err, :kmag, :kmag_err, :av, :av_err1, :av_err2, :I1_flux_1, :unc_1, :I1_mag, :I1_mag_unc_1, :n_obs_1, :flux_I2_2,
    :unc_2, :I2_mag, :I2_mag_unc2, :n_obs_2, :W1mag, :W2mag, :W3mag, :W4mag, "W1-I1_mag", "W2-I2_mag", "Kmag-I1_mag", "Kmag-I2_mag", "I1_mag-I2_mag",
    :e_W1mag, :e_W2mag, :e_W3mag, :e_W4mag, :AllWISE, :RAJ2000, :DEJ2000, :eeMaj, :eeMin, :eePA, :ID, :ccf, :ex, :var, :qph, :pmRA,
    :e_pmRA, :pmDE, :e_pmDE, :d2M, :angDist

  include Plot

  def self.csv_column_names
    return []
  end

  def spz_image_url(ch)
    folder = self.kepid.to_s.rjust(8, '0')[0..3]
    filename = self.kepid.to_s + "_ch#{ch}.png"
    path = ["/cutouts", folder, filename].join("/")
    return path
  end

  def ukirt_image_url
    filename = "ukirt_j__kic_kepler_id_" + self.kepid.to_s + ".png"
    path = ["/thumbnails", filename].join("/")
    return path
  end

end
