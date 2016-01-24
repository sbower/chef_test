#
# Cookbook Name:: kuali-tools
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
docker_service 'default' do
  install_method 'script'
  action [:create, :start]
end

docker_registry 'https://docker.cucloud.net/' do
  username node['dtr']['user']
  password node['dtr']['password']
  email ''
end
