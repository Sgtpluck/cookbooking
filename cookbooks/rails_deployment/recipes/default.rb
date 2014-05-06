#
# Cookbook Name:: rails_app
# Recipe:: default
#
# Copyright (C) 2014 
#
# 
#
application "rails-app" do 
	packages %w[ruby git]

	path "usr/local/www/rails-app"
	owner "root"
	group "root"

	repository "https://github.com/Sgtpluck/taco"
	rollback_on_error false

	rails do
		gems %w[bundler]
	end

end