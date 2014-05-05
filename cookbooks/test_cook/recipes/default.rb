#
# Cookbook Name:: test_cookbook
# Recipe:: default
#
# Copyright (C) 2014 
#
# 
#


deploy_revision "my/deploy/dir" do
  # Use a local repo if you prefer
  repo "git@/Sgtpluck/taco"
  environment "RAILS_ENV" => "production"
  revision "HEAD"
  action :deploy
  restart_command "touch tmp/restart.txt"
  create_dirs_before_symlink  %w{tmp public config deploy}

  # You can use this to customize if your app has extra configuration files
  # such as amqp.yml or app_config.yml
  symlink_before_migrate  "config/database.yml" => "config/database.yml"

  # If your app has extra files in the shared folder, specify them here
  symlinks  "system" => "public/system",
            "pids" => "tmp/pids",
            "log" => "log"
end