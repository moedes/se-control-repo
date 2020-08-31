class profile::platform::baseline::users::linux {

  user { 'jerry':
    ensure   => 'present',
    comment  => 'Account for Jerry',
    gid      => '100',
    home     => '/home/jerry',
    password => 'Homerun5001',
    shell    => '/bin/bash',
    uid      => '1000',
  }

}
