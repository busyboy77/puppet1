group {'devs':
ensure => present,
gid => '4000',
}

user {'nmr':
ensure => present,
uid => '4001',
home => '/home/nmr',
shell => '/bin/bash',
managehome => '/home/nmr',
groups => ['devs','wheel']
password => '$1$B1Xk37Bx$9V3sCfBgxXJwmlO/.wCeg/',
}
