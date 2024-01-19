# Using Puppet, create a manifest that kills a process named killmenow

#Kills a process named killmenow
exec{'pkill -f killmenow':
path  => '/usr/bin/:/usr/local/bin/:/bin/'
}
