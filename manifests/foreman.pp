file { '/etc/apt/apt.conf.d/9999auth':
  owner   => root,
  group   => root,
  content => 'APT::Get::AllowUnauthenticated yes;',
  mode    => 644;
}
->
class {'foreman':
  ssl            => false,
  admin_username => 'foreman',
  admin_password => 'foreman',
  db_type        => 'mysql',
  db_username    => 'foreman',
  db_password    => 'foreman',
}

# This is for libvirt compute resources
class {'foreman::compute::libvirt':
}

# This is the provisioning setup plugin
package { 'ruby-foreman-setup':
  ensure  => 'present',
  require => Class['foreman'],
}

class {'foreman::puppetmaster':
  foreman_user     => 'foreman',
  foreman_password => 'foreman',
  require => Class['foreman'],
}