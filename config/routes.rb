Railspikes::Application.routes.draw do
  root :to => 'home_page#get'

  map_restfully :koi

  map_restfully :kob

  map_restfully :download

	namespace :admin do
		root :to => "uploads#get"
		map_restfully :upload
	end  
  
  
end
