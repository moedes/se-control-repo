class example::rkeworker {

    file {'rke':
        ensure => present,
        path   => '/usr/bin/rke',
        source => 'https://github.com/rancher/rke/releases/download/v1.2.0-rc9/rke_linux-amd64',
        mode   => '+x'
    }

}
