class AddNewFieldsToTest2SpikesKoi < ActiveRecord::Migration
  def change
    add_column :test2_spikes_kois, :confirmed, :boolean
    add_column :test2_spikes_kois, :kepler_name, :string
  end
end
