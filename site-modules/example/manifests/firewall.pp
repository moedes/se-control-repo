class example::firewall {
  class {'firewall':
    ensure => $ensure
  }
}
