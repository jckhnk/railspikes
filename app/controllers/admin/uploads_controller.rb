class Admin::UploadsController < Admin::AdminController

	def get
	end

	def posts
		require 'csv'
    sources = []

		csv_text = File.read(params['myfile'].tempfile.path)
		csv = CSV.parse(csv_text, :headers => true)
		csv.each do |row|
      data = row.to_hash
      data["kepid"] = data["kepid"].to_f.to_i
      sources << KeplerStellarCatalog.new(data)
		end

  	KeplerStellarCatalog.delete_all
  	sources.map{|s| s.save}

		redirect_to admin_upload_path, :notice => "#{KeplerStellarCatalog.count} Sources Ingested"
	end

end
