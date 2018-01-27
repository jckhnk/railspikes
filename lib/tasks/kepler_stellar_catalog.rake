namespace :kepler_stellar_catalog do
  desc "Ingests data from the KSC CSV file"
  task :ingest => :environment do
    require 'csv'

    unless ENV['SourceFile']
      puts " Missing source file..."
      puts " Usage: rake kepler_stellar_catalog:ingest SourceFile=/path/to/file"
      next
    else
      file = Pathname.new(ENV['SourceFile'])
    end

    unless file.file? && file.exist?
      puts " Source file does not exists..."
      next
    end

    puts " Removing old sources..."
    KeplerStellarCatalog.destroy_all

    items = []

    CSV.foreach(file, headers: true) do |row|
      data = row.to_hash
      data["kepid"] = data["kepid"].to_f.to_i
      items << KeplerStellarCatalog.new(data)
    end

    puts " Ingesting sources from file..."
    items.each do |item|
      if item.save
        puts item.kepid
        puts "  Saved..."
      else
        puts "  Failed to save..."
        puts "  #{item.inspect}"
      end
    end

    puts "Complete #{KeplerStellarCatalog.count}/#{items.length}"
  end
end
