class tomcat::params {
    
    $user = 'tomcat'
    $group = 'tomcat'
    $config_path = '/etc/tomcat/tomcat.conf'
    $packages = [ 'tomcat', 'tomcat-webapps' ]
    $service_name = 'tomcat'
    $service_state = running
    
    $catalina_pid = '/var/run/tomcat.pid'
    $shutdown_verbose = 'false'
    $security_manager = 'false'
    $shutdown_wait ='30'
    $tomcat_fcg_loaded = '1'
    $java_home = "/usr/lib/jvm/jre"
    
    $xms = '64m'
    $xmx = '128m'
    $max_perm_size = '128m'
    
}