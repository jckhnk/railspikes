class KobsController < PlotsController

	def gets
		@title = "KOBs"
		@model_name = Kob
		@plot_route = :kobs_path
		super
	end

	def posts
		@title = "KOBs"
		@model_name = Kob
		@plot_route = :kobs_path
		super
	end

end