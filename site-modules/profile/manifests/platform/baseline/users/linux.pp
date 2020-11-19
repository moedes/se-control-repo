class profile::platform::baseline::users::linux {

  # user { 'docker':
  #   ensure   => present,
  #   comment  => 'Account for docker',
  #   gid      => '100',
  #   groups   => ['wheel', 'docker'],
  #   home     => '/home/docker',
  #   shell    => '/bin/bash',
  #   uid      => '1010',
  # }

  # file {['/home/docker', '/home/docker/.ssh'] :
  #   ensure   => directory,
  #   mode     => '0755',
  #   owner    => 'docker',
  #   require  => User['docker']
  # }

  # # file {'/home/docker/.ssh':
  # #   ensure   => directory,
  # #   mode     => '0755',
  # #   owner    => 'docker',
  # #   group    => 'docker',
  # #   require  => File['/home/docker']
  # # }

  # file {'/home/docker/.ssh/authorized_keys':
  #   ensure   => present,
  #   owner    => 'docker',
  #   group    => 'docker',
  #   require  => File['/home/docker/.ssh'],
  #   mode     => '0755'
  # }

  # ssh_authorized_key { 'docker@centos':
  #   user     => 'docker',
  #   type     => 'ssh-rsa',
  #   key      => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCy1KuYW1xMHiPHf2mJ6Ha6brZZWz0pxre1hkF0Lao3VE3KwnLIE6f1BeOToYqDpg7s6qx0V+nsPhPXApSWU034uKzLCV2890T2/Bb25b5gMJN6ICbx4UqcMFF3TN5UpBxk97ioq5pbgyBDAbtpLe6ztLSt1NmTceWCko6RtFGlv1erSsyaG637oASU+Bu+CHZVCmIVnuqD98uqSNczz4nUxrnEIse5iJ9MojBZEkQ9ss0gMxopNokJR5ctBClnr8akfkg73FezbfGGE72WP8vSNSrmDmKV1Fb9TeJsV1r1HHbnxq8dgduZf4tdDSF1lLzBrJ5EMh3nOyDRMQXfdzUN',
  #   require  => File['/home/docker/.ssh']
  # }

  user { 'pe-puppet':
    ensure  => present,
    comment => 'PE User for running device manager',
    gid     => '200',
    groups  => ['pe-puppet', 'root'],
    home    => ['/home/pe-puppet'],
    shell   => ['/bin/bash'],
    uid     => '1020',
  }

  group { 'pe-puppet':
    ensure => present,
    gid    => '200',
    before => User['pe-puppet']
  }
}
