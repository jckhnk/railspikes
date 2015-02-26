Railspikes::Application.routes.draw do
  root :to => 'home_page#get'

  map_restfully :plot

	namespace :admin do
		root :to => "uploads#get"
		map_restfully :upload
	end  
  
  
end
