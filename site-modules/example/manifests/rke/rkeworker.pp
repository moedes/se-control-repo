class example::rke::rkeworker {

    file {'rke':
        ensure    => file,
        path      => '/usr/bin/rke',
        source    => 'https://github.com/rancher/rke/releases/download/v1.2.1/rke_linux-amd64',
        mode      => '+x',
        checksum  => 'sha256',
        checksum_value => 'e1e288d557cea6140f16ba6659fe427fb7431c3cd62cc67f2cdfdf415a4012da'
    }

}
