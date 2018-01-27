namespace :kepler_stellar_catalog do
  desc "Ingests data from the KSC CSV file"
  task :ingest => :environment do
    require 'csv'

    file = Rails.root + "lib/data/SpiKeS-WISE-match-100-180119.csv"

    items = []

    CSV.foreach(file, headers: true) do |row|
      items << KeplerStellarCatalog.new(row.to_hash)
    end

    items.each do |item|
      if item.save
        puts "Saved..."
      else
        puts "Failed to save:"
        puts item.inspect
      end
    end

    puts "Complete"
  end
end
