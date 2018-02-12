class AddFieldsToKeplerStellarCatalog < ActiveRecord::Migration
  def up
    add_column :kepler_stellar_catalogs, "AllWISE", :string
    add_column :kepler_stellar_catalogs, "RAJ2000", :float
    add_column :kepler_stellar_catalogs, "DEJ2000", :float
    add_column :kepler_stellar_catalogs, "eeMaj", :float
    add_column :kepler_stellar_catalogs, "eeMin", :float
    add_column :kepler_stellar_catalogs, "eePA", :float
    add_column :kepler_stellar_catalogs, "ID", :integer, :limit => 5
    add_column :kepler_stellar_catalogs, "ccf", :string
    add_column :kepler_stellar_catalogs, "ex", :integer
    add_column :kepler_stellar_catalogs, "var", :string
    add_column :kepler_stellar_catalogs, "qph", :string
    add_column :kepler_stellar_catalogs, "pmRA", :integer
    add_column :kepler_stellar_catalogs, "e_pmRA", :integer
    add_column :kepler_stellar_catalogs, "pmDE", :integer
    add_column :kepler_stellar_catalogs, "e_pmDE", :integer
    add_column :kepler_stellar_catalogs, "d2M", :float
    add_column :kepler_stellar_catalogs, "angDist", :float

    remove_column :kepler_stellar_catalogs, "e_Jmag"
    remove_column :kepler_stellar_catalogs, "e_Hmag"
    remove_column :kepler_stellar_catalogs, "e_Kmag"
    remove_column :kepler_stellar_catalogs, "cntr"
    remove_column :kepler_stellar_catalogs, "cc_flags"
    remove_column :kepler_stellar_catalogs, "ext_flg"
    remove_column :kepler_stellar_catalogs, "var_flg"
    remove_column :kepler_stellar_catalogs, "ph_qual"
    remove_column :kepler_stellar_catalogs, "r_2mass"
  end

  def down
    remove_column :kepler_stellar_catalogs, "AllWISE"
    remove_column :kepler_stellar_catalogs, "RAJ2000"
    remove_column :kepler_stellar_catalogs, "DEJ2000"
    remove_column :kepler_stellar_catalogs, "eeMaj"
    remove_column :kepler_stellar_catalogs, "eeMin"
    remove_column :kepler_stellar_catalogs, "eePA"
    remove_column :kepler_stellar_catalogs, "ID"
    remove_column :kepler_stellar_catalogs, "ccf"
    remove_column :kepler_stellar_catalogs, "ex"
    remove_column :kepler_stellar_catalogs, "var"
    remove_column :kepler_stellar_catalogs, "qph"
    remove_column :kepler_stellar_catalogs, "pmRA"
    remove_column :kepler_stellar_catalogs, "e_pmRA"
    remove_column :kepler_stellar_catalogs, "pmDE"
    remove_column :kepler_stellar_catalogs, "e_pmDE"
    remove_column :kepler_stellar_catalogs, "d2M"
    remove_column :kepler_stellar_catalogs, "angDist"

    add_column :kepler_stellar_catalogs, "e_Jmag", :float
    add_column :kepler_stellar_catalogs, "e_Hmag", :float
    add_column :kepler_stellar_catalogs, "e_Kmag", :float
    add_column :kepler_stellar_catalogs, "cntr", :integer, :limit => 5
    add_column :kepler_stellar_catalogs, "cc_flags", :string
    add_column :kepler_stellar_catalogs, "ext_flg", :integer
    add_column :kepler_stellar_catalogs, "var_flg", :string
    add_column :kepler_stellar_catalogs, "ph_qual", :string
    add_column :kepler_stellar_catalogs, "r_2mass", :float
  end

end
