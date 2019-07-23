require 'serverspec'
set :backend, :exec
describe 'docker-engine' do
  describe service('docker') do
      it { should be_running }
  end
  describe command('docker --version') do
    its(:exit_status) { should eq 0 }
  end
end
describe 'kubelet' do
  describe service('kubelet') do
      it { should be_running }
  end
  describe command('kubelet --version') do
    its(:exit_status) { should eq 0 }
  end
end
