class ApplicationController < ActionController::Base
  before_filter :authenticate

  protect_from_forgery

  def authenticate
  	authenticate_or_request_with_http_basic do |name, password|
  		name == "spikes" && password == "exoplanet"
  	end

  end

end
