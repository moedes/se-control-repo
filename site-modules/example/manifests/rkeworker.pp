class example::rkeworker {

    file {'rke':
        ensure    => file,
        path      => '/usr/bin/rke',
        source    => 'https://github.com/rancher/rke/releases/download/v1.1.7/rke_linux-amd64',
        mode      => '+x',
        checksum  => 'sha256',
        checksum_value => 'ebc62233f213762ef9686ac9029638f646269d17843ed7b0e4dbd9df5921b855'
    }

}
