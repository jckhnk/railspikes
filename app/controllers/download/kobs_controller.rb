class Download::KobsController < ApplicationController
  
  def get

		require 'csv'

		csv = CSV.generate do |csv|
			csv << (Kob.all_column_names)
			Kob.all.each do |r|
				csv << r.to_csv
			end

		end

		send_data csv, :filename => "SpiKeS_KOBs_#{Time.now.strftime("%b_%d_%T")}.csv", :type=> 'text/csv' and return

  end

end