#
# Cookbook Name:: rails_app
# Recipe:: default
#
# Copyright (C) 2014 
#
# 
#
application "rails-app" do 
	packages %w[runit git sqlite3 libsqlite3-dev]

	path "usr/local/www/rails-app"
	owner "www-data"
	group "www-data"

	environment_name = "development"

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