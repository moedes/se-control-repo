class example::rkeworker {

    file {'rke':
        ensure       => file,
        path         => '/usr/bin/rke',
        source       => 'https://github.com/rancher/rke/releases/download/v1.1.8-rc1/rke_linux-amd64',
        sourceselect => 'all',
        mode         => '+x'
    }

}
