#
# Cookbook Name:: gitblit
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

application "gitblit" do
  path "/usr/local/gitblit"
  owner node["tomcat"]["user"]
  group node["tomcat"]["group"]

  scm_provider Chef::Provider::RemoteFile::Deploy
  repository "https://gitblit.googlecode.com/files/gitblit-1.3.2.war"
  revision "f28d9c585e8ea684dff8897f38fd6d17a9e7ace8"

  java_webapp
  
  tomcat
end

