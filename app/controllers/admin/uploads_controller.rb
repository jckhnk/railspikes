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
  	## Upload method for KOI
		require 'csv'
    sources = []
    
		csv_text = File.read(params['myfile'].tempfile.path)
		csv = CSV.parse(csv_text, :headers => true)
		rows = []
		csv.each do |row|
		  sources << Koi.new(row.to_hash)
		end
		
  	Koi.delete_all
  	sources.map{|s| s.save}
  	
		redirect_to admin_upload_path, :notice => "#{Koi.count} KOI Sources Ingested"
	end
	
	def posts
  	## Upload method for KOB
		require 'csv'
    sources = []
    
		csv_text = File.read(params['myfile'].tempfile.path)
		csv = CSV.parse(csv_text, :headers => true)
		rows = []
		csv.each do |row|
		  sources << Kob.new(row.to_hash)
		end
		
  	Kob.delete_all
  	sources.map{|s| s.save}
  	
		redirect_to admin_upload_path, :notice => "#{Kob.count} KOB Sources Ingested"
	end
	
end