class PlotsController < ApplicationController

	def get

		@data = [[1,1], [2,2]]

	end

	def post

		# raise(params.inspect)
		x = params[:x]
		y = params[:y]
		unless Koikic.column_names.include?(x) && Koikic.column_names.include?(y)
			raise "params not allowed".inspect
		end
		# raise (Koikic.csv_column_names + [x, y]).join(',').inspect
		if params[:sql_query].blank?
			sql_query = "(#{x} is not NULL) AND (#{y} is not NULL)"
		else
			sql_query = "(#{params['sql_query']}) AND (#{x} is not NULL) AND (#{y} is not NULL)"
		end
		sample = params[:sample]
		sample_size = params[:sample_size].to_i

		# sql_query_clean = ActiveRecord::Base::sanitize(sql_query)
		# raise [sql_query, sql_query_clean].inspect
		# raise sql_query_clean.inspect
		if sample == "on"
			@result = Koikic.where(sql_query).order("random()").limit(sample_size)
		else
			@result = Koikic.where(sql_query)
		end
		# @data = @result.pluck(x).zip(@result.pluck(y))
		@data = @result.map{|s| s.build_plot_data(x, y)}
		# @x = x
		# @y = y

		require 'csv'

		if params[:button] == 'download_xy'
			csv = CSV.generate do |csv|
				csv << (Koikic.csv_column_names + [x, y])
				@result.each do |r|
					csv << r.to_csv_xy(x, y)
				end
			end
			send_data csv, :filename => "SpiKeS_#{x}_#{y}_#{Time.now.strftime("%b_%d_%T")}.csv", :type=> 'text/csv' and return
		end

		if params[:button] == 'download_all'
			csv = CSV.generate do |csv|
				csv << (Koikic.column_names)
				@result.each do |r|
					csv << r.to_csv
				end
			end
			send_data csv, :filename => "SpiKeS_all_data_#{Time.now.strftime("%b_%d_%T")}.csv", :type=> 'text/csv' and return
		end

		render "plots/get"

	end

end