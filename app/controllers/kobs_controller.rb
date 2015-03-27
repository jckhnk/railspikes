class KobsController < PlotsController

	def gets
		@title = "KOBs"
		@model_name = Test2SpikesKoi
		@plot_route = Rails.application.routes.url_helpers.kobs_path
		super
	end

	def posts
		@title = "KOBs"
		@model_name = Test2SpikesKoi
		@plot_route = Rails.application.routes.url_helpers.kobs_path
		super
	end

end