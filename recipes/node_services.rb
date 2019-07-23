service node['kubelet']['service']['name'] do
  supports [:start, :stop, :enable, :disable, :restart, :reload]
  action [:start, :enable]
end
service node['kube-proxy']['service']['name'] do
  supports [:start, :stop, :enable, :disable, :restart, :reload]
  action [:start, :enable]
  only_if {node['platform_family']=='rhel'}
end
