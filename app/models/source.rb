class Source < ActiveRecord::Base
  attr_accessible :ra_1, :dec_1, :flux_1, :unc_1, :n_obs_1, :sub_1, :xsc_1, :w1mag_1, :e_w1mag_1,
                  :ra_2, :dec_2, :flux_2, :unc_2, :n_obs_2, :sub_2, :xsc_2, :w2mag_2, :e_w2mag_2,
                  :i1, :i2

end
