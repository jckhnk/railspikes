class KoisController < PlotsController

	def gets
		@title = "KOIs"
		@model_name = Koi
		@plot_route = :kois_path
		super
	end

	def posts
		@title = "KOIs"
		@model_name = Koi
		@plot_route = :kois_path
		super
	end

end