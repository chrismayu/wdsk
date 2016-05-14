# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 user = CreateAdminService.new.call
 puts 'CREATED ADMIN USER: ' << user.email

rand(15..21).times { 
  league = FactoryGirl.create(:league)
   rand(25..41).times{
      FactoryGirl.create(:player, :league_id => league.id) 
  }

 }
 