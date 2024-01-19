# Using Puppet, create a file in /tmp

file { '/tmp/school':
  ensure  => 'file',          # Set ensure to 'file' to create a file
  mode    => '0744',          # Ensure mode is a string and quoted
  owner   => 'www-data',      # Correct the owner parameter
  group   => 'www-data',      # Correct the group parameter
  content => 'I love Puppet',
}
