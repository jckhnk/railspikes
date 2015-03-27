class KoisController < PlotsController

	def gets
		@title = "KOIs"
		@model_name = Test2SpikesKoi
		@plot_route = Rails.application.routes.url_helpers.kois_path
		super
	end

	def posts
		@title = "KOIs"
		@model_name = Test2SpikesKoi
		@plot_route = Rails.application.routes.url_helpers.kois_path
		super
	end

end