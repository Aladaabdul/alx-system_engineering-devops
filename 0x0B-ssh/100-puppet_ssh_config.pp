#!/usr/bin/env bash
# using Puppet to make changes to our configuration file.

file { '/home/ubuntu/.ssh/config':
  ensure  => 'present',
  content => @("EOL"),
    Host 44715-web-01
        HostName 54.160.67.145
        User ubuntu
        IdentityFile ~/.ssh/school
        PreferredAuthentications publickey
        PasswordAuthentication no
    EOL
  owner   => 'ubuntu',
  group   => 'ubuntu',
  mode    => '0600',
}
