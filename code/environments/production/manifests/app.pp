node  'node1' {
    notify {"**** NODE_1 BLOCK ****": }
    include java::install

}

node  'node2' {
    notify {"**** NODE_2 BLOCK ****": }
    include java::install

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