#
# Cookbook Name:: localusers
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#

search(:users, "*:*").each do |data|
	user data["id"] do
		comment data["comment"]
		uid data["uid"]
		gid data["gid"]
		home data["home"]
		shell data["shell"]
		password data["password"]
		system true
  		manage_home true
	end.run_action(:create)
directory  data["home"]  do
	owner data["id"]
	group data["gid"]
  	mode '0755'
	action :create
end
end
include_recipe "localusers::groups"
