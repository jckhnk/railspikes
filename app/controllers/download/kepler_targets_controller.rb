class Download::KeplerTargetsController < ApplicationController

  def get
    filename = "SpiKeS-All-Sources-180214.csv"
    data = File.read(Rails.root + "public/data" + filename)
		send_data data, :filename => filename, :type => 'text/csv' and return
  end

end
