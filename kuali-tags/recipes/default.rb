#
# Cookbook Name:: kuali-tags
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe 'aws'

aws_resource_tag node['ec2']['instance_id'] do
  tags('os' => 'ubuntu')
  action :update
end
