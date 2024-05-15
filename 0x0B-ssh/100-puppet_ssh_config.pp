# using puppet to make changes to the default ssh config file
# so that one can connect to a server without typing a password.


file { '/etc/ssh/ssh_config':
  ensure => present,
}
file_line { 'Declare identity file':
  path  => '/etc/ssh/ssh_config',
  line  => 'IdentityFile ~/.ssh/school',
  match => '^IdentityFile',
}
file_line { 'Turn off passwd auth':
  path  => '/etc/ssh/ssh_config',
  line  => 'PasswordAuthentication no',
  match => '^PasswordAuthentication',
}
