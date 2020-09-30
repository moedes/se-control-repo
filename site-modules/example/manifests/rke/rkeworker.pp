class example::rke::rkeworker {

    file {'rke':
        ensure    => file,
        path      => '/usr/bin/rke',
        source    => 'https://github.com/rancher/rke/releases/download/v1.2.0-rc9/rke_linux-amd64',
        mode      => '+x',
        checksum  => 'sha256',
        checksum_value => '3ea5099c0b11883980734a104d3f5699c7d82be19849d016116b6ef0fba78ac4'
    }

}
