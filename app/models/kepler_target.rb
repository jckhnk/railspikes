class KeplerTarget < ActiveRecord::Base
  attr_accessible :kepid, :tm_designation, :nkoi, :kepmag, :teff, :logg, :feh,
    :radius, :mass, :dens, :jmag, :hmag, :kmag, :ukirtj, :i1mag, :i1unc, :i2mag,
    :i2unc, :i1obs, :i2obs, :i1i2color, :ji2color, :w1mag, :w1unc, :w2mag, :w2unc,
    :w1w2color
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
