class system_users::admins {
group {'staff':
ensure=>present,
}

if $facts['kernal'] == 'windows' {
user {'admin':
groups=> 'staff',
}
}
else
{
package {'csh':
ensure => latest,
}

user {'admin':
groups => 'staff',
shell => '/bin/csh',
require => Package['csh'],
}
}
}
