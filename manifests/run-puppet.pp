file {'/usr/local/bin/run-puppet':
ensure => file,
source=> '/etc/puppetlabs/code/environments/production/files/run-puppet.sh',
mode => '0777',
}

cron {'run-puppet':
command => '/usr/local/bin/run-puppet',
hour => '*',
minute => '*/2',
}
