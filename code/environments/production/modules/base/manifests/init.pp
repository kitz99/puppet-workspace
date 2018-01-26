class base inherits base::params {
    user { 'deploy':
        ensure     => present,
        uid        => 5001,
        home       => '/home/deploy',
        password   => '$1$oSM9T5gg$euty9Irc7y0DLIF/I0K/W1',
        managehome => true,
    }

    user { 'rege':
        ensure     => absent,
    }

    $packs =['tree', 'wget', 'git', 'unzip', 'ntp']

    package { $packs:
        ensure     => present,
    }

    file { '/etc/motd':
        ensure     => present,
        owner      => root,
        content    => "
            SYSTEM INFOS
            ============
            This data is obtained from facter
            
            Hostname    : ${::fqdn}
            IP Address  : ${::ipaddress}
            Memory      : ${::memory['system']['total']}
            Cores       : ${::processors['count']}
            OS          : ${::os['distro']['description']}
            
        ",
    }

    service { $::base::ntp_service : 
        ensure     => running
    }
}