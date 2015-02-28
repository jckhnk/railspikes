class SimpleSource < ActiveRecord::Base
  attr_accessible :dec_1, :dec_2, :flux_1, :flux_2, :n_obs_1, :n_obs_2, :ra_1, :ra_2, :unc_1, :unc_2

  def self.column_names
  	fields = self.columns.map{|c| c.name}
  	return fields - ["id", "created_at", "updated_at"]
  end

end