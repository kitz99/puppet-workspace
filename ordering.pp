package {"nginx":

}


file {"nginx.conf":
    # will modify file and will tell puppet to restart service
    notify => Service["nginx"]
}

service {"nginx":
    # require both Package and file to start the service
    require => [ Package["nginx"], File["nginx.conf"] ]
}