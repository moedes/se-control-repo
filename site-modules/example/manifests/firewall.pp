class example::firewall {
  class {'firewall':
    ensure => lookup('firewall::ensure')
  }
}
