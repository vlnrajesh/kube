service node['kube']['master']['service'] do
  supports [:start, :stop, :restart, :status]
  action [:enable, :start]
end
