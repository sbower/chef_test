#
# Cookbook Name:: kuali-nfs-users
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

users_manage "tcadm" do
  group_id 7070
  action [ :remove, :create ]
end

user 'tcowner' do
  comment 'tcowner account to scyn with on prem'
  uid '11448'
  gid '7070'
  home '/home/tcowner'
  shell '/bin/bash'
end

user 'tomcat7' do
  comment 'tcowner account to scyn with docker'
  uid '105'
  gid '7070'
  home '/home/tomcat7'
  shell '/bin/bash'
end
