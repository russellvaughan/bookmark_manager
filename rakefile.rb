require 'data_mapper'
require './app/app.rb'

namespace :db do 
	desc "non destructive upgrade"
	task :auto_upgrade do 
		DataMapper.auto_upgrade!
	puts "Auto Upgrade complete no data loss"
	end
	
	desc "destructive upgrade"
	task :auto_migrate do 
		DataMapper.migrate!
	puts "Auto Migrate complete data was lost"
	end

end