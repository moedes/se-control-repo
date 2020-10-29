class profile::puppet::cafile {
  file {'/opt/puppetlabs/puppet/ssl':
    ensure => 'directory'
  }

  file {'/opt/puppetlabs/puppet/ssl/cert.pem':
    ensure  => file,
    source  => 'puppet:///site-modules/profile/puppet/cafile/cert.pem',
    require => File['/opt/puppetlabs/puppet/ssl']
  }

}
