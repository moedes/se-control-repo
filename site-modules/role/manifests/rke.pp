class role::rke {
    include profile::app::docker
    # include profile::platform::baseline::users::linux
    include example::rke::dockeruser
    include ntp
}
