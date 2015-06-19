class Download::KoisController < ApplicationController
  
  def get

		require 'csv'

		csv = CSV.generate do |csv|
			csv << (Koi.all_column_names)
			Koi.all.each do |r|
				csv << r.to_csv
			end

		end

		send_data csv, :filename => "SpiKeS_KOIs_#{Time.now.strftime("%b_%d_%T")}.csv", :type=> 'text/csv' and return

  end

end