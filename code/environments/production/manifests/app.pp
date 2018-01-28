node  'node1' {
    class {::tomcat: 
        xms   => '64m',
        xmx   => '128m',
        user  => 'tomcat',
        group => 'tomcat',
    }
    include prefs
    include base
    
    tomcat::deploy {'sysfoo':
        deploy_url     => "https://2-119248955-gh.circle-artifacts.com/0/tmp/circle-artifacts.6eWEG7q/sysfoo.war",
        checksum_value => "d8d1255ff67a5a2954e536625ef010f4"
    }
}

node 'node2' {
    include tomcat
    # include prefs
    
    tomcat::deploy {'sysfoo':
        deploy_url     => "https://2-119248955-gh.circle-artifacts.com/0/tmp/circle-artifacts.6eWEG7q/sysfoo.war",
        checksum_value => "d8d1255ff67a5a2954e536625ef010f4"
    }
}


node default { 
    notify { "checkpoint_1": 
        message => "
            CHECKPOINT_1
            
            Apply Default BLOCK
            Looks like there is no definition for this node...
        "
    }
}