class example::rke::kubectl {

  file {'kubectl':
    ensure => file,
    path      => '/usr/bin/kubectl',
    source    => 'https://storage.googleapis.com/kubernetes-release/release/v1.19.0/bin/linux/amd64/kubectl',
    mode      => '+x',
  }
}
