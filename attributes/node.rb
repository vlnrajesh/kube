default['kube']['node']['pin_version']=false
default['kube']['node']['packages']={
  'amazon' => {
    '2' => {
      'aws-cfn-bootstrap'    => '1.4-31.amzn2',
      'awscli'               => '1.16.102-1.amzn2.0.1',
      'conntrack'            => '1.4.4-3.amzn2.0.2',
      'curl'                 => '7.61.1-9.amzn2.0.1',
      'jq'                   => '1.5-1.amzn2.0.2',
      'ec2-instance-connect' => '1.1-9.amzn2',
      'nfs-utils'            => '1:1.3.0-0.54.amzn2.0.2',
      'unzip'                => '6.0-19.amzn2',
      'wget'                 => '1.14-18.amzn2.1'
     }
  },
  'centos' => {
    '7.6.1810' => {
      'nfs-utils'            => '1:1.3.0-0.54.amzn2.0.2',
      'socat'                => '1.7.3.2-2.amzn2.0.1',
      'unzip'                => '6.0-19.amzn2',
      'wget'                 => '1.14-18.amzn2.1'
    }
  }
}
default['kube']['node']['packages']={
  'amazon' => {
    '2' => {
      'kubelet'              => '1.15.1-0'
    }
  },
  'centos' => {
    '7.6.1810' => {
      'kubernetes-node'       => '1.15.1-0'
    }
  }
}
default['kubelet']['service']['name']='kubelet'
default['kube-proxy']['service']['name']='kube-proxy'

default['kube']['aws-iam-authenticator']['version']='1.13.7'
default['kube']['aws-iam-authenticator']['package']='/usr/sbin/aws-iam-authenticator'
default['kube']['aws-iam-authenticator']['uri']="https://amazon-eks.s3-us-west-2.amazonaws.com/#{node['kube']['aws-iam-authenticator']['version']}/2019-06-11/bin/linux/amd64/aws-iam-authenticator"
