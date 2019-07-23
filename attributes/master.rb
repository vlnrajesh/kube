default['kube']['master']['pin_version']=true
default['kube']['master']['packages']={
  'amzon' => {
    '2' => {
      'kubelet'       => '1.15.0-0',
      'kubeadm'       => '1.15.0-0',
      'kubectl'       => '1.15.0-0'
    }
  },
  'centos' => {
    '7.6.1810' => {
      'kubelet'       => '1.15.0-0',
      'kubeadm'       => '1.15.0-0',
      'kubectl'       => '1.15.0-0'
    }
  }
}
default['kube']['master']['service']='kubelet'
default['kube']['client']['packages']={
  'amazon' => {
    '2' => {
      'kubectl'       => '1.15.0-0'
    }
  }
}
