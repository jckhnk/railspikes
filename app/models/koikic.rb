class Koikic < ActiveRecord::Base
  attr_accessible :I1_mag, :I1_obs, :I1_unc, :I2_mag, :I2_obs, :I2_unc, :kic_altid, :kic_altsource, :kic_aq, :kic_av, :kic_blend, :kic_catkey, :kic_cq, :kic_d51mag, :kic_dec, :kic_degree_ra, :kic_ebminusv, :kic_feh, :kic_fov_flag, :kic_galaxy, :kic_gkcolor, :kic_glat, :kic_glon, :kic_gmag, :kic_grcolor, :kic_gredmag, :kic_hmag, :kic_imag, :kic_jkcolor, :kic_jmag, :kic_kepler_id, :kic_kepmag, :kic_kmag, :kic_logg, :kic_parallax, :kic_pmdec, :kic_pmra, :kic_pmtotal, :kic_pq, :kic_ra, :kic_radius, :kic_rmag, :kic_scpid, :kic_scpkey, :kic_teff, :kic_tm_designation, :kic_tmid, :kic_umag, :kic_variable, :kic_zmag, :ukirt_j

  def self.column_names
  	fields = self.columns.map{|c| c.name}
  	newfields = fields - ["id", "created_at", "updated_at"]
    return [newfields[15]]+newfields[0..14]+newfields[16..-1]
  end

  def self.csv_column_names
  	return ["kic_tmid"]
  end

  def to_csv_xy(x, y)
  	return Koikic.csv_column_names.map{|c| self.send(c)} + [self.send(x), self.send(y)]
  end

  def to_csv
  	return Koikic.column_names.map{|c| self.send(c)}
  end

  def build_plot_data(x, y)
    data = []
    hash_data = {}
    data << self.send(x)
    data << self.send(y)
    Koikic.column_names.each do |c|
      hash_data[c] = self.send(c)
    end
    data << hash_data
    return data
  end

end
