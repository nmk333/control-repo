# == Class: class_name
#
class server {
  host { 'NMKserver':
    ensure       => 'present',
    ip           => '188.166.62.128',
    host_aliases => ['puppet-fundamentals-server-03',puppet-fundamentals-server-03.local]
  }
  # resources
}
