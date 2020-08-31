class profile::platform::baseline::users::linux {

  user { 'jerry':
    ensure   => 'present',
    comment  => 'Account for Jerry',
    gid      => '100',
    home     => '/home/jerry',
    shell    => '/bin/bash',
    uid      => '1010',
  }

  ssh_authorized_key { 'jerry@pmaster01':
        user => 'jerry',
        type => 'ssh-rsa',
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDW94SfVhhk1usr7mNUJ/YxkXIdKrI
                LvLkYyylVAD9PzpHVrRYiWYjnjnWP9oSzSvx003Yvl24HWXm2Lk5Q9Liskxe
                +9WyPbM3HRi1wgkiV2ITzJ5781tCPr8msYYF4U4fHh2M+0mSsfvdWfsnqEUmN
                /utRpwpAmVMFSwepw619sxITIMvqHGHvaPOGioG1UeIIo5XJDnXhbPqDQnhvv
                BkpO2DsCTPpYF9/8RMU5yGoo8ASs1heLbCbYzMq+3ARfg+ph9hcU7ZCnhNVMC
                nwcFTDGMzYU78mY+ci2EbsnG+cpFcGh2uGjhTnhH41E6gPDA0KDbDgcVfnGIN
                nESDBsmnDs5YyJbGpZLiHniAvcndHCsTZPOV8/nEEysuaFggkEDIZaYWriV3B
                1IhnV/wA9xNtZ4WFKgxCp9lL4RUBzi31xFFdMi8sY0kO9xLErC1K5vaSrJdMQ
                HoBJ0lvwyJP2VaPDgcANuk729nzPYdC/2f2twOdjuEXZAFMFu0cw+DRe7hx3x
                jMvaWLHIjIiiGcXOtBbh8mJTRgXYBKYK5LloeWwgG1o5wXai56XUVuuPiCAE5
                F7SkNYYIcH578DILPuKz8+nxuHfPIpr9ZT8e/EqYfN3BZij0IrX6BkfAWK9zk
                cuCLtRw6f2vVYTgb14A3Yf9oEEJ9rX+KnMbq1/VeO6RBbQ==',
  }

}
