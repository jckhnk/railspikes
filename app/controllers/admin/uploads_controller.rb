# def parse_csv(tmp)
# 	f = []
# 	File.open(tmp) do |f1|
# 		while line = f1.gets
# 			f << line.split(',')
# 		end
# 	end
# 	f
# end

class Admin::UploadsController < Admin::AdminController

	def get

	end

	def post

		# while Source.last != nil
		# 	Source.last.delete
		# end
		# SimpleSource.destroy_all
		Koikic.destroy_all

		require 'csv'
		csv_text = File.read(params['myfile'].tempfile.path)
		csv = CSV.parse(csv_text, :headers => true)
		rows = []
		csv.each do |row|
		  # SimpleSource.create(row.to_hash)
		  Koikic.create(row.to_hash)
		  # rows << row.to_hash
		end

		# redirect_to admin_upload_path, :notice => "rows ingested: "+ SimpleSource.count.to_s
		redirect_to admin_upload_path, :notice => "rows ingested: "+ Koikic.count.to_s
		# redirect_to admin_upload_path, :notice => rows
		# redirect_to admin_upload_path, :notice => Page.all

	end

end