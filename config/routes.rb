Railspikes::Application.routes.draw do
  root :to => 'plots#get'

  map_restfully :plot

  map_restfully :download

	namespace :admin do
		root :to => "uploads#get"
		map_restfully :upload
	end  
  
  
end
