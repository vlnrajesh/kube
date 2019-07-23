node['kube']['node']['packages'][node['platform']][node['platform_version']].each do |pacakge_name,package_version|
  package pacakge_name do
    version pacakge_version if node['kube']['node']['pin_version']
    action :install
  end
end

remote_file node['kube']['aws-iam-authenticator']['package'] do
  source node['kube']['aws-iam-authenticator']['uri']
  mode '0777'
  only_if { node['platform_family']=='amazon'}
end
