class example::kubectl {

  file {'kubectl':
    ensure => file,
    path      => '/usr/bin/kubectl',
    source    => 'curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.19.0/bin/linux/amd64/kubectl',
    mode      => '+x',
  }
}
