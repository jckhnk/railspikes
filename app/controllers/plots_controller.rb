class PlotsController < ApplicationController

	def gets
		@data = [[0], [0]]
	end

	def posts
		x = params[:x]
		y = params[:y]
    
		unless @model_name.plot_column_names.include?(x) && @model_name.plot_column_names.include?(y)
			raise "params not allowed".inspect
		end

		sample_size = params[:sample_size].to_i
		sample_size = 2500 if sample_size > 2500 || sample_size == 0

		@result = @model_name.where("(? is not NULL) AND (? is not NULL)", x, y).order("random()").limit(sample_size)
		@data = @result.map{|s| s.build_plot_data(x, y)}

		require 'csv'

		if params[:button] == 'download_xy'
			csv = CSV.generate do |csv|
				csv << (@model_name.csv_column_names + [x, y])
				@result.each do |r|
					csv << r.to_csv_xy(x, y)
				end
			end
			send_data csv, :filename => "SpiKeS_#{x}_#{y}_#{Time.now.strftime("%b_%d_%T")}.csv", :type=> 'text/csv' and return
		end

		if params[:button] == 'download_all'
			csv = CSV.generate do |csv|
				csv << (@model_name.all_column_names)
				@result.each do |r|
					csv << r.to_csv
				end
			end
			send_data csv, :filename => "SpiKeS_all_data_#{Time.now.strftime("%b_%d_%T")}.csv", :type=> 'text/csv' and return
		end

		render "plots/gets"

	end

end
