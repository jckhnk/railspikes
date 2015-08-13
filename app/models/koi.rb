class Koi < ActiveRecord::Base
  attr_accessible :kic_kepler_id, :kic_tm_designation, :kepler_name, :confirmed, :kic_ra, :kic_dec,
                  :i1_mag, :i2_mag, :i1_unc, :i2_unc, :i1_obs, :i2_obs, :i1i2color, :ji2color, :ukirt_j,
                  :kic_umag, :kic_gmag, :kic_rmag, :kic_imag, :kic_zmag, :kic_gredmag, :kic_d51mag, :kic_jmag,
                  :kic_hmag, :kic_kmag, :kic_kepmag, :kic_tmid, :kic_scpid, :kic_altid, :kic_altsource, :kic_galaxy,
                  :kic_blend, :kic_variable, :kic_teff, :kic_logg, :kic_feh, :kic_ebminusv, :kic_av, :kic_radius,
                  :kic_cq, :kic_pq, :kic_aq, :kic_catkey, :kic_scpkey, :kic_parallax, :kic_glon, :kic_glat, :kic_pmtotal,
                  :kic_grcolor, :kic_jkcolor, :kic_gkcolor, :kic_degree_ra, :kic_fov_flag, :kic_pmra, :kic_pmdec
  include Plot

  def spz_image_url(ch)
    folder = self.kic_kepler_id.to_s.rjust(8, '0')[0..3]
    filename = self.kic_kepler_id.to_s + "_ch#{ch}.png"
    path = ["/cutouts", folder, filename].join("/")
    return path
  end

  def ukirt_image_url
    filename = "ukirt_j__kic_kepler_id_" + self.kic_kepler_id.to_s + ".png"
    path = ["/thumnbails", filename].join("/")
    return path
  end

end
