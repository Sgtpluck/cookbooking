#
# Cookbook Name:: test_cookbook
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


deploy_revision "my/deploy/dir" do

  repo 'ssh://Sgtpluck/taco.git'
  environment "RAILS_ENV" => "production"
  revision "HEAD"
  action :deploy
  restart_command "touch tmp/restart.txt"
  create_dirs_before_symlink  %w{tmp public config deploy}


end