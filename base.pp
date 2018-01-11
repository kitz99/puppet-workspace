user { 'deploy':
    ensure     => present,
    uid        => 5001,
    home       => '/home/deploy',
    password   => '$1$oSM9T5gg$euty9Irc7y0DLIF/I0K/W1',
    managehome => true
}

user { 'rege':
    ensure     => present,
    uid        => 5002,
    home       => '/home/rege',
    password   => '$1$oSM9T5gg$euty9Irc7y0DLIF/I0K/W1',
    managehome => true
}