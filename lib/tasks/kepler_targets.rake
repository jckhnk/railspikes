namespace :kepler_targets do
  desc "Updates the nkoi column on kepler targets table from NExScI"
  task :update_nkoi => :environment do
    require 'csv' 
    
    # Stat tracking
    updated_records = 0
    skipped_records = 0
    run_time = Time.now

    data_url = "http://exoplanetarchive.ipac.caltech.edu/cgi-bin/nstedAPI/nph-nstedAPI?table=q1_q17_dr24_stellar&format=csv&select=kepid,nkoi"
    
    # Read data into CSV object
    csv_data = CSV.parse(open(data_url))
    
    # Convert CSV object (array of arrays) to a hash with the kepid as keys and nkoi as values
    nkoi_data = Hash[csv_data]
    
    # Update the records
    KeplerTarget.all.each do |record|
      value = nkoi_data[record.kepid.to_s]
      if value.present?
        updated_records += 1
        record.update_attribute(:nkoi, value)
      else
        skipped_records += 1
      end
    end

    puts "#{Time.now - run_time} seconds"
    puts "#{updated_records} updated records"
    puts "#{skipped_records} skipped records"    
 
  end
end


