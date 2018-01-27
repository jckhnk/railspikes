class Download::KeplerTargetsController < ApplicationController

  def get

		require 'csv'

		csv = CSV.generate do |csv|
			csv << (KeplerStellarCatalog.all_column_names)
			KeplerStellarCatalog.all.each do |r|
				csv << r.to_csv
			end

		end

		send_data csv, :filename => "SpiKeS_Kepler_Stellar_Catalog_#{Time.now.strftime("%b_%d_%T")}.csv", :type=> 'text/csv' and return

  end

end
