class profile::platform::baseline::users::linux {

  user { 'docker':
    ensure   => present,
    comment  => 'Account for docker',
    gid      => '100',
    groups   => ['wheel', 'docker'],
    home     => '/home/docker',
    shell    => '/bin/bash',
    uid      => '1010',
  }

  file {'/home/docker':
    ensure   => directory,
    mode     => '0755',
    owner    => 'docker',
    require  => User['docker']
  }

  file {'/home/docker/.ssh':
    ensure   => directory,
    mode     => '0755',
    owner    => 'docker',
    group    => 'docker',
    require  => File['/home/docker']
  }

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
    key      => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDIFgnHvuMFOrJZwi0YXHzbnroPaQQ9GGg8aqYSuGUbkGx8+Y9GhBrb/GAcamxkYXU66E11s1CksGFhlQDfpw56wTYVV33pPLCFE0LygAmyY8MnSlxDRcJmcp7V3g11B5Jt4xopBAagA5WZC3wx6VRlYM5ub1US51DXJWQTZW6b5ok+lqrrW/Qk4VlLu8wdyKrrBAaTvk421YOltU3gMLfltsZoIH5gt1n3aVLC271Pw9KNKeMndD1KEubfph+9Qtv7Wg5ziBZfiP29KJPRHE9BiWMaTGEPwlMHuGKKAh6ZYggaKALcnnTAtgtqYDEPxmabZSgb9H6hgJ+cvyz5wSFEzCdulJi5WziJyfdq5N/btTMUbq9PqpqOsd/e/Yb4alZdLROqRGsjw6IAiH9kHeG9F3jCl/AXvI/JtygVobb9hkTk1kRnmrMO83DQ8RTaGMZWQqseQXVUW98wWo2yFDOdCKtxGMBY9Fv1hffse6ctR/D6Ohnbgg/dIeLoHV4/Ykme/V6YcD23AfGu+ErhRwYuNS7m9qqobBowkgdfDlfwLN1o6DvmLk+91aWTdVv9XAX66pzkOqrceQ6fCzfRU4IvTRO2SqlQly+NpkMd2VLe38kbT59y2br/EREmamaX+4tkSjMOqq4z4DokXUfvWX3Pmd/d1paLsmlCs06+JwcHhw==',
    require  => File['/home/docker/.ssh']
  }

}
