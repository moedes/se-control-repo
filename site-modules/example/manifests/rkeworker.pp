class example::rkeworker {

    file {'rke':
        ensure             => file,
        path               => '/usr/bin/rke',
        source             => 'https://github.com/rancher/rke/releases/download/v1.1.7/rke_linux-amd64',
        mode               => '+x',
        checksum_value     => md5,
    }

}
