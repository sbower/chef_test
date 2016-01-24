#
# Cookbook Name:: kuali-exports
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

nfs_export "/exports" do
  network '10.0.0.0/8'
  writeable false
  sync true
  options ['no_root_squash']
end

environments = ['dev', 'ci', 'intdev', 'sb', 'emerg', 'test', 'devops', 'train']

environments.each do |env|
  nfs_export "/exports/#{env}" do
    network '10.0.0.0/8'
    writeable false
    sync true
    options ['no_root_squash']
  end
end
