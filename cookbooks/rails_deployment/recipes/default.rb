#
# Cookbook Name:: rails_deployment
# Recipe:: default
#
# Copyright (C) 2014 
#
# 
#
package "apache2" do
  action :install
end

service "apache2" do
  action [ :enable, :start ]
end

application "rails-app" do 
	packages %w[ruby1.9.3 runit git sqlite3 libsqlite3-dev]

	path "/usr/local/www/rails-app"

	owner "root"
	group "root"

	environment_name "development"

	repository "https://github.com/Sgtpluck/railsgirls"

	rails do
		gems %w[bundler]
		
		database_template "sqlite3_database.yml.erb"

		database do
			adapter "sqlite3"
			database "db/rails-app.sqlite3"
		end
	end

	unicorn do
	end

end