node  'node1', 'node2' {
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