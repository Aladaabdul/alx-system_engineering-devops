# Using Puppet, install flask from pip3

package { 'flask':
  ensure   => '2.1.0',          #version
  provider => 'pip3',           # provider flask
}
