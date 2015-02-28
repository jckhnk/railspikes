class CreateSimpleSources < ActiveRecord::Migration
  def change
    create_table :simple_sources do |t|
      t.float :ra_1
      t.float :dec_1
      t.float :flux_1
      t.float :unc_1
      t.integer :n_obs_1
      t.float :ra_2
      t.float :dec_2
      t.float :flux_2
      t.float :unc_2
      t.integer :n_obs_2

      t.timestamps
    end
  end
end
