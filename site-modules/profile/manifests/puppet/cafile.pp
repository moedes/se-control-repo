class profile::puppet::cafile (
  String $source,
  String $ssldirectory,
  String $certfile
) {

  file {$ssldirectory :
    ensure => 'directory'
  }

  file {$ssldirectory + '/' + $certfile :
    ensure  => file,
    source  => $source,
    require => File[$ssldirectory]
  }
}
