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

execute "install oh-my-zsh" do
  command "curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh"
  ignore_failure true
  action :nothing
end

remote_directory "/home/vagrant/" do
  source '.vim'
  recursive true
  action :create_if_missing
  files_owner 'vagrant'
  files_group 'vagrant'
end

%w( .tmux.conf .zshrc).each do |file|
  cookbook_file file do
    path '/home/vagrant'
    action :create_if_missing
  end

end
