class profile::platform::baseline::users::linux {

  user { 'docker':
    ensure   => 'present',
    comment  => 'Account for docker',
    gid      => '100',
    home     => '/home/docker',
    shell    => '/bin/bash',
    uid      => '1010',
  }

  ssh_authorized_key { 'jerrymozes@Jerrys-MacBook-Pro.local':
        user => 'docker',
        type => 'ssh-rsa',
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDIFgnHvuMFO
                rJZwi0YXHzbnroPaQQ9GGg8aqYSuGUbkGx8+Y9GhBr
                b/GAcamxkYXU66E11s1CksGFhlQDfpw56wTYVV33pP
                LCFE0LygAmyY8MnSlxDRcJmcp7V3g11B5Jt4xopBAa
                gA5WZC3wx6VRlYM5ub1US51DXJWQTZW6b5ok+lqrrW
                /Qk4VlLu8wdyKrrBAaTvk421YOltU3gMLfltsZoIH5
                gt1n3aVLC271Pw9KNKeMndD1KEubfph+9Qtv7Wg5zi
                BZfiP29KJPRHE9BiWMaTGEPwlMHuGKKAh6ZYggaKAL
                cnnTAtgtqYDEPxmabZSgb9H6hgJ+cvyz5wSFEzCdul
                Ji5WziJyfdq5N/btTMUbq9PqpqOsd/e/Yb4alZdLRO
                qRGsjw6IAiH9kHeG9F3jCl/AXvI/JtygVobb9hkTk1
                kRnmrMO83DQ8RTaGMZWQqseQXVUW98wWo2yFDOdCKt
                xGMBY9Fv1hffse6ctR/D6Ohnbgg/dIeLoHV4/Ykme/
                V6YcD23AfGu+ErhRwYuNS7m9qqobBowkgdfDlfwLN1
                o6DvmLk+91aWTdVv9XAX66pzkOqrceQ6fCzfRU4IvT
                RO2SqlQly+NpkMd2VLe38kbT59y2br/EREmamaX+4t
                kSjMOqq4z4DokXUfvWX3Pmd/d1paLsmlCs06+JwcHh
                w==',
  }

}
