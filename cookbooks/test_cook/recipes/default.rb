#
# Cookbook Name:: test_cookbook
# Recipe:: default
#
# Copyright (C) 2014 
#
# 
#


deploy_revision "my/deploy/dir" do

  repo 'Sgtpluck/taco.git'
  environment "RAILS_ENV" => "production"
  revision "HEAD"
  action :deploy
  restart_command "touch tmp/restart.txt"
  create_dirs_before_symlink  %w{tmp public config deploy}


end