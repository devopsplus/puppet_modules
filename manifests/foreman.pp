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
