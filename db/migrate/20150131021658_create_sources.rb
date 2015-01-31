class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.float :ra_1
      t.float :dec_1
      t.float :flux_1
      t.float :unc_1
      t.float :n_obs_1
      t.float :sub_1
      t.float :xsc_1
      t.float :w1mag_1
      t.float :e_w1mag_1
      t.float :ra_2
      t.float :dec_2
      t.float :flux_2
      t.float :unc_2
      t.float :n_obs_2
      t.float :sub_2
      t.float :xsc_2
      t.float :w2mag_2
      t.float :e_w2mag_2
      t.float :i1
      t.float :i2

      t.timestamps
    end
  end
end
