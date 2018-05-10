class system_users::admins {
group {staff':
ensure=>present
}

if $facts['kernal'] == 'windows' {
user {'admin':
group=> 'staff'
}
else
{
package {'csh':
ensure => latest,
}

user {'admin':
groups => 'start',
shell => '/bin/csh',
require => Package ['csh'],
}
}
}
