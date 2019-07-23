yum_repository 'kube' do
  description 'kubernetes Stable repo'
  baseurl node['kube']['repo']['uri']
  gpgkey node['kube']['gpg']['key']
  gpgcheck true
  repo_gpgcheck false
  action :create
end
