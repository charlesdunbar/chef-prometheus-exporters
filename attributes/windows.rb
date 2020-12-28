default['prometheus_exporters']['windows']['version'] = '0.15.0'

default['prometheus_exporters']['windows']['enabled_collectors'] = %w(
  cpu
  cs
  logical_disk
  net
  os
  service
  system
)

default['prometheus_exporters']['windows']['listen_address'] = '0.0.0.0'
default['prometheus_exporters']['windows']['listen_port'] = '9182'
default['prometheus_exporters']['windows']['metrics_path'] = '/metrics'
