class KoisController < PlotsController

	def gets
		@title = "KOIs"
		@model_name = Koi
		@plot_route = SITE_URL + "/kois"
		super
	end

	def posts
		@title = "KOIs"
		@model_name = Koi
		@plot_route = SITE_URL + "/kois"
		super
	end

end