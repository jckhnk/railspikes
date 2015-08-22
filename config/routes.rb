Railspikes::Application.routes.draw do
  root :to => 'home_page#get'

  map_restfully :koi

  map_restfully :kob

  map_restfully :kepler_target

	namespace :download do
	  map_restfully :kob
	  map_restfully :koi
    map_restfully :kepler_target
	end

	namespace :admin do
		root :to => "uploads#get"
		map_restfully :upload
	end


end
