class profile::platform::baseline::users::linux {

  user { 'jerry':
    ensure   => 'absent',
    comment  => 'Account for Jerry',
    gid      => '1000',
    home     => '/home/jerry',
    password => 'puppetftw',
    shell    => '/bin/bash',
    uid      => '1001',
  }

}
