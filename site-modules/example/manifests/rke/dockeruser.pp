class example::rke::dockeruser (
  String $dockeruser = lookup('dockeruser', String, unique, "docker"), # must be a String, unique finds all keys in the hiera hierarchy and strips any duplicates while combining non-duplicates, if nothing found set it to docker
  String $dockerkey,
  String $dockerhome,
){

  user { $dockeruser :
    ensure   => present,
    comment  => 'Account for docker',
    gid      => '100',
    groups   => ['wheel', 'docker'],
    home     => $dockerhome,
    shell    => '/bin/bash',
    uid      => '1010',
  }

  file {[$dockerhome, '/home/docker/.ssh'] :
    ensure   => directory,
    mode     => '0755',
    owner    => $dockeruser,
    require  => User[$dockeruser]
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
    owner    => $dockeruser,
    group    => 'docker',
    require  => File['/home/docker/.ssh'],
    mode     => '0755'
  }

  ssh_authorized_key { 'jerrymozes@Jerrys-MacBook-Pro.local':
    user     => $dockeruser,
    type     => 'ssh-rsa',
    key      => $dockerkey,
    require  => File['/home/docker/.ssh']
  }

}
