class example::rke::dockeruser (
  String $dockeruser,
  String $dockerkey,
){

  user { $dockeruser :
    ensure   => present,
    comment  => 'Account for docker',
    gid      => '100',
    groups   => ['wheel', 'docker'],
    home     => '/home/docker',
    shell    => '/bin/bash',
    uid      => '1010',
  }

  file {['/home/docker', '/home/docker/.ssh'] :
    ensure   => directory,
    mode     => '0755',
    owner    => 'docker',
    require  => User['docker']
  }

  # file {'/home/docker/.ssh':
  #   ensure   => directory,
  #   mode     => '0755',
  #   owner    => 'docker',
  #   group    => 'docker',
  #   require  => File['/home/docker']
  # }

  file {'/home/docker/.ssh/authorized_keys':
    ensure   => present,
    owner    => 'docker',
    group    => 'docker',
    require  => File['/home/docker/.ssh'],
    mode     => '0755'
  }

  ssh_authorized_key { 'jerrymozes@Jerrys-MacBook-Pro.local':
    user     => 'docker',
    type     => 'ssh-rsa',
    key      => $dockerkey,
    require  => File['/home/docker/.ssh']
  }

}
