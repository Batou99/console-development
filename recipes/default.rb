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

%w{curl build-essential tmux vim-nox}.each do |pkg|
  package pkg do
    action :install
  end
end

execute "install ctags (does not work as package)" do
  command "apt-get install ctags"
  ignore_failure true
  action :nothing
end

remote_directory "/home/vagrant/.vim" do
  source '.vim'
  recursive true
  action :create_if_missing
  files_owner "vagrant"
  files_group "vagrant"
end

execute "link" do
  command "ln -s /home/vagrant/.vim/vimrc /home/vagrant/.vimrc"
  ignore_failure true
  action :nothing
end

execute "chown" do
  command "chown -R vagrant.vagrant /home/vagrant;"
end

remote_directory "/root/.vim" do
  source '.vim'
  recursive true
  action :create_if_missing
end

execute "link" do
  command "ln -s /root/.vim/vimrc /root/.vimrc"
  ignore_failure true
  action :nothing
end

include_recipe 'oh-my-zsh'
include_recipe 'chef-rvm'

%w( .tmux.conf .zshrc).each do |file|
  cookbook_file file do
    path '/home/vagrant'
    action :create_if_missing
  end
end
