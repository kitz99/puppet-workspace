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
    content    => "Property of XYZ",
}

service { 'ntp': 
    ensure     => running
}