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


%w{root vagrant}.each do |user|
  remote_directory "/home/#{user}/.vim" do
    source '.vim'
    recursive true
    action :create_if_missing
    files_owner user
    files_group user
  end
end

include_recipe 'oh-my-zsh'

%w( .tmux.conf .zshrc).each do |file|
  cookbook_file file do
    path '/home/vagrant'
    action :create_if_missing
  end
end
