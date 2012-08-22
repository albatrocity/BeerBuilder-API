# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Admin.create(:email => 'joe@cremalab.com', :password => 'password', :password_confirmation => 'password')
Admin.create(:email => 'ross@cremalab.com', :password => 'password', :password_confirmation => 'password')


grains          = File.join(Rails.root, "db/seed_data/grains.csv")
hops            = File.join(Rails.root, "db/seed_data/hops.csv")
beer_styles     = File.join(Rails.root, "db/seed_data/beer_styles.csv")
beer_categories = File.join(Rails.root, "db/seed_data/beer_categories.csv")

Grain.delete_all
Hop.delete_all
BeerStyle.delete_all
BeerCategory.delete_all

CSV.foreach(grains, :col_sep =>',', :row_sep =>:auto, :quote_char => '"') do |row|
  Grain.create!(:name => row[0], :characteristics => row[1], :description => row[2], :is_extract => row[3], :gu_hi => row[4], :gu_lo => row[5], :lovibond_hi => row[6], :lovibond_lo => row[7])
end

CSV.foreach(hops, :col_sep =>',', :row_sep =>:auto, :quote_char => '"') do |row|
  Hop.create!(:name => row[0], :description => row[1], :characteristics => row[2], :aa_hi => row[3], :aa_lo => row[4])
end

CSV.foreach(beer_styles, :col_sep =>',', :row_sep =>:auto, :quote_char => '"') do |row|
  BeerStyle.create!(:name => row[0], :abv_hi => row[1], :abv_lo => row[2], :fg_hi => row[3], :fg_lo => row[4], :ibu_hi => row[5], :ibu_lo => row[6], :og_hi => row[7], :og_lo => row[8], :srm_hi => row[9], :srm_hi => row[10])
end

CSV.foreach(beer_categories, :col_sep =>',', :row_sep =>:auto, :quote_char => '"') do |row|
  BeerCategory.create!(:name => row[0])
end