class profile::platform::baseline::users::linux {

  user { 'docker':
    ensure   => present,
    comment  => 'Account for docker',
    gid      => '100',
    home     => '/home/docker',
    shell    => '/bin/bash',
    uid      => '1010',
  }

  file {'/home/docker':
    ensure   => directory,
    mode     => '0750',
    owner    => 'docker',
    require  => User['docker']
  }

  file {'/home/docker/.ssh':
    ensure   => directory,
    mode     => '0760',
    owner    => 'docker',
    require  => File['/home/docker']
  }

  file {'/home/docker/.ssh/authorized_keys':
    ensure   => present,
    owner    => 'docker',
    require  => File['/home/docker/.ssh'],
    mode     => '0650'
  }

  ssh_authorized_key { 'jerrymozes@Jerrys-MacBook-Pro.local':
    user     => 'docker',
    type     => 'ssh-rsa',
    key      => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQD04mlfh896fIyT8b70DGBYpqSS6KyhGYLEjQryYD5+txxIH1TzhQaR2of8Ht1GRIZaMBlCPN6t2Uy04Z4uGPhglazNN+titbWWPBKkh0EtlPalwFvwnrfhSiXuoOwy0fCmrq0+Z62Vw+mESf2YAgwfA6ClXWWSvxVTlbblbkAc7QTdbYkLY3zMpcZGZJcDOzrjAE0YHaATlVCwQL1aCLjeKUd9tm4inofmLp2GaqottvnDqiMYQ3wuqgyCROhgm0l0EmPchQ2tTZQB9gJiU/6zsZkUjxjdR5Z3geuckCUquM+ObCziuLICS1GPu4O+9+DGzWnbYXa5HjwtR6EGo5qmaDYdaOlSYmaPJM3BYc6Rdb5TOuq40BUIz4/MLWeWYt2Y+ORJJpFW+ifp5UDJtD742JwmGJhsJzor7rXfioUVqSFPGGDmF427pwC77e+LzE6zhI1db0YdgXy1a9jKE+27J6d+FW0eEcpnvR58/upW6SVMx1lORGkPvSV5mqoAY2oTx53EF7OcB/JE7HFoiHHrsBWFu8uVGG4Z6ii9n/bGFm4+wP6XzhXuFXRGy7izYZiZbkBMwbNBqmjV7J1uTQ/GojiO0pLK+CZhsB+o3WoLaGcZiHuOzQJZEogbfO58b5LZKvCt7oFQ/t5a/b/1qA+9ek2qp+vvwHmvZBDfSRWLyQ==',
    require  => File['/home/docker/.ssh']
  }

}
