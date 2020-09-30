class example::terraforminst {
  include 'archive'

  package { 'unzip':
    ensure => 'present',
  }

  archive { '/usr/bin/terraform_0.13.3_linux_amd64.zip':
    ensure  => present,
    extract => true,
    extract_path => '/usr/bin',
    source  => 'https://releases.hashicorp.com/terraform/0.13.3/terraform_0.13.3_linux_amd64.zip',
    checksum => '35c662be9d32d38815cde5fa4c9fa61a3b7f39952ecd50ebf92fd1b2ddd6109b',
    checksum_type => 'sha256',
    creates => '/usr/bin/terraform',
    cleanup => true,
    require => Package['unzip'],
  }


}
