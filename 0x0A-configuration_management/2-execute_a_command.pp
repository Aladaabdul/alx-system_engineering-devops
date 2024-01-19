# Using Puppet, create a manifest that kills a process named killmenow

exec { 'killmenow_process':
  command     => '/usr/bin/pkill -f killmenow',
  path        => '/usr/bin',
  refreshonly => true,
  onlyif      => '/usr/bin/pgrep -f killmenow',
}
