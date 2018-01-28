class tomcat(
    $xms = '63m',
    $xmx = '129m',
    $user = 'root',
    $group = 'root'
) inherits tomcat::params {
    include java::install
    include tomcat::install
    include tomcat::config
    include tomcat::service
}
