class KeplerTarget < ActiveRecord::Base
  attr_accessible :tm_designation, :nkoi, :kepmag, :teff, :logg, :feh, :radius, :mass, :dens, :jmag, :hmag, :kmag, 
                  :ra, :dec, :i1mag, :i1err, :i2mag, :i2err, :i1obs, :i2obs, :ukirtj, 
                  :w1mag, :w1err, :w2mag, :w2err, :i1_i2, :ukj_i2, :j_i2, :w1_w2, :kepid

  include Plot

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
