#
# Cookbook:: prometheus_exporters
# Recipe:: windows
#
# The windows recipe makes use of the Chef chocolatey_package resource.  This will perform a default install of the Chocolatey package management system if it doesn't already exist.

windows_exporter 'main' do
  version node['prometheus_exporters']['windows']['version']
  enabled_collectors node['prometheus_exporters']['windows']['enabled_collectors'].join(',')
  listen_address node['prometheus_exporters']['windows']['listen_address']
  listen_port node['prometheus_exporters']['windows']['listen_port']
  metrics_path node['prometheus_exporters']['windows']['metrics_path']
  action :install
  not_if { node['prometheus_exporters']['disable'] }
end
