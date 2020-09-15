class example::k3s {

  package { 'container-selinux' :
    ensure => present,
    provider => 'yum'
  }

  package { 'selinux-policy-base' :
    ensure => present,
    provider => 'yum'
  }

  exec { 'curl' :
    command => 'curl -sfL https://get.k3s.io | sh -',
  }

}
