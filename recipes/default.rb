#
# Cookbook Name:: console-development
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#
execute "update package index" do
  command "apt-get update"
  ignore_failure true
  action :nothing
end.run_action(:run)

%w{build-essential tmux}.each do |pkg|
  package pkg do
    action :install
  end
end
