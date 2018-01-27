node  'node1' {
    class {::tomcat: 
        xms   => '64m',
        xmx   => '128m',
        user  => 'tomcat',
        group => 'tomcat',
    }
    include prefs
    include base
}

node 'node2' {
    include tomcat
    include prefs
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