#
# Cookbook Name:: taco_cookbook
# Recipe:: default
#
# Copyright (C) 2014 
#
# 
#

application "rails-app" do 
	packages %w[ruby1.9.3 git]

	path "/usr/local/www/rails-app"

	owner "root"
	group "root"

	repository "https://github.com/Sgtpluck/taco.git"
	

	rails do
		gems %w[bundler]
	end

end