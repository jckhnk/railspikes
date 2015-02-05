class Admin::UploadsController < Admin::AdminController

	def get

	end

	def post
		# raise params['myfile'].tempfile.path.inspect

		redirect_to admin_upload_path, :notice => "something happened"
	end

end