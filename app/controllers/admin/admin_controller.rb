class Admin::AdminController < ApplicationController
  
  before_filter :authenticate

	layout "admin"
  
  protected

  def authenticate	
  	authenticate_or_request_with_http_basic do |name, password|
  		name == "admin" && password == "exoplanet"
  	end
  end

end