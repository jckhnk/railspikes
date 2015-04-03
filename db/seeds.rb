# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Removing all Source recrods"
Source.destroy_all

puts "Generating 50 fake Source records"
50.times do |i|
  multi = (1..100).to_a.shuffle.shuffle.shuffle.first
  record = Source.create({
    :ra_1      => (multi * i.to_f / [2, 3, 4].shuffle.first),
    :dec_1     => (multi * i.to_f / [2, 3, 4].shuffle.first),
    :flux_1    => (multi * i.to_f / [2, 3, 4].shuffle.first),
    :unc_1     => (multi * i.to_f / [2, 3, 4].shuffle.first),
    :n_obs_1   => (multi * i.to_f / [2, 3, 4].shuffle.first),
    :sub_1     => (multi * i.to_f / [2, 3, 4].shuffle.first),
    :xsc_1     => (multi * i.to_f / [2, 3, 4].shuffle.first),
    :w1mag_1   => (multi * i.to_f / [2, 3, 4].shuffle.first),
    :e_w1mag_1 => (multi * i.to_f / [2, 3, 4].shuffle.first),
    :ra_2      => (multi * i.to_f / [2, 3, 4].shuffle.first),
    :dec_2     => (multi * i.to_f / [2, 3, 4].shuffle.first),
    :flux_2    => (multi * i.to_f / [2, 3, 4].shuffle.first),
    :unc_2     => (multi * i.to_f / [2, 3, 4].shuffle.first),
    :n_obs_2   => (multi * i.to_f / [2, 3, 4].shuffle.first),
    :sub_2     => (multi * i.to_f / [2, 3, 4].shuffle.first),
    :xsc_2     => (multi * i.to_f / [2, 3, 4].shuffle.first),
    :w2mag_2   => (multi * i.to_f / [2, 3, 4].shuffle.first),
    :e_w2mag_2 => (multi * i.to_f / [2, 3, 4].shuffle.first),
    :i1        => (multi * i.to_f / [2, 3, 4].shuffle.first),
    :i2        => (multi * i.to_f / [2, 3, 4].shuffle.first)
  })
  
  puts record.to_json
  puts "---------"
end

puts "---------"
puts "Removing all Kic recrods"
Kic.destroy_all

puts "Generating 50 fake Kic records"
50.times do |i|
  multi = (1..100).to_a.shuffle.shuffle.shuffle.first
  attrs = {}
  
  Kic.column_names.each do |n|
    attrs[n] = (multi * i.to_f / [2, 3, 4].shuffle.first)
  end

  record = Kic.create(attrs)
  puts record.to_json
  puts "---------"
end

puts "Generating 50 fake Koi records"
50.times do |i|
  multi = (1..100).to_a.shuffle.shuffle.shuffle.first
  attrs = {}
  
  Koi.safe_column_names.each do |n|
    attrs[n] = (multi * i.to_f / [2, 3, 4].shuffle.first)
  end

  record = Koi.create(attrs)
  puts record.to_json
  puts "---------"
end

puts "Generating 50 fake Koi records"
50.times do |i|
  multi = (1..100).to_a.shuffle.shuffle.shuffle.first
  attrs = {}
  
  Kob.safe_column_names.each do |n|
    attrs[n] = (multi * i.to_f / [2, 3, 4].shuffle.first)
  end

  record = Kob.create(attrs)
  puts record.to_json
  puts "---------"
end