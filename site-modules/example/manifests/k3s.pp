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

  package { 'k3s-selinux' :
    ensure   => present,
    provider => 'rpm',
    source   => 'https://rpm.rancher.io/k3s-selinux-0.1.1-rc1.el7.noarch.rpm',
    before   => Exec['curl']
  }

  exec { 'curl' :
    command => 'curl -sfL https://get.k3s.io | sh -',
    path    => '/usr/bin',
    creates => '/usr/local/bin/k3s'
  }

}
