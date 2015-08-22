class KeplerTargetsController < PlotsController

	def gets
		@title = "Kepler Targets"
		@model_name = KeplerTarget
		@plot_route = SITE_URL + "/kepler_targets"
		super
	end

	def posts
    @title = "Kepler Targets"
    @model_name = KeplerTarget
    @plot_route = SITE_URL + "/kepler_targets"
		super
	end

end
