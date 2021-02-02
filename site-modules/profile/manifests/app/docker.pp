class profile::app::docker {

  if $::kernel == 'windows' {
    fail('Unsupported OS')
  }

  class {'docker':
    version => '19.03.15',
  }

}
