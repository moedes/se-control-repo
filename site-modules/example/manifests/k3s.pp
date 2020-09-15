class example::k3s {

  package { 'container-selinux' :
    ensure   => present,
    provider => 'yum',
    before   => Exec['curl']
  }

  package { 'selinux-policy-base' :
    ensure   => present,
    provider => 'yum',
    before   => Exec['curl']
  }

  package { 'https://rpm.rancher.io/k3s-selinux-0.1.1-rc1.el7.noarch.rpm' :
    ensure   => present,
    provider => 'rpm',
    before   => Exec['curl']
  }

  exec { '/usr/bin/curl' :
    command => 'curl -sfL https://get.k3s.io | sh -',
  }

}
