require 'tvdinner'

shome = File.expand_path("../../..", __FILE__)
local_config shome
bundler_config "#{shome}/cookbooks"

require 'chef/handler/json_file'
report_handlers << Chef::Handler::JsonFile.new(:path => "#{shome}/var/chef/reports")
exception_handlers << Chef::Handler::JsonFile.new(:path => "#{shome}/var/chef/reports")
