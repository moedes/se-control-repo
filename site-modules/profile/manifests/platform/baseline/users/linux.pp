class profile::platform::baseline::users::linux {

  user { 'mozes':
    ensure   => 'present',
    comment  => 'Account for mozes',
    gid      => '100',
    home     => '/home/mozes',
    shell    => '/bin/bash',
    uid      => '1010',
  }

  ssh_authorized_key { 'jerry@centostemp':
        user => 'mozes',
        type => 'ssh-rsa',
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDLcQpvpL10
                zvsJcahGGnemqPu81rkaJtmC61uxPppWpxorCBCWC
                /Ld+MhFwQg/bCUeDkmY4PavntgirBe9yRTpdHtGVz
                u5chDaF5TFVgyvkbKnm8TlI9WijP5ZkirSUj5IVT8
                7Fjufggu6zy/g0Rf3yxgkRFu/hyneV8Vaf6mfroFJ
                9kElNdllEaQurXvHAtcW4a4DQmlX6BvbzymLFilud
                YY5375qjPShfGTJFFLvTqCur23MlJyD/hYIEzDMZT
                zcMD2LrwEMoIPcJHNL3LfppZWJfKpgMsm8dJaNYbX
                T6ac9DYAVEmmwfBr7CEfTNMVynDJuqFMCwNmW4fp6
                xp7B',
  }

}
