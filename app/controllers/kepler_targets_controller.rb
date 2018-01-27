class KeplerTargetsController < PlotsController

	def gets
		@title = "Plot Tool"
		@model_name = KeplerStellarCatalog
		@plot_route = SITE_URL + "/kepler_targets"
		super
	end

	def posts
    @title = "Plot Tool"
    @model_name = KeplerStellarCatalog
    @plot_route = SITE_URL + "/kepler_targets"
		super
	end

end
