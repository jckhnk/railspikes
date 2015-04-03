class KobsController < PlotsController

	def gets
		@title = "KOBs"
		@model_name = Kob
		@plot_route = SITE_URL + "/kobs"
		super
	end

	def posts
		@title = "KOBs"
		@model_name = Kob
		@plot_route = SITE_URL + "/kobs"
		super
	end

end