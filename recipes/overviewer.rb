#
# Cookbook Name:: brohan
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apt"
include_recipe "python"

# Add official minecraft-overviewer debian repository
apt_repository "minecraft-overviewer" do
  uri "http://overviewer.org/debian"
  components ["./"]
  action :add
end

# Install package
package "minecraft-overviewer"
