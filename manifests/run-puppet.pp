file {'/usr/local/bin/run-puppet':
ensure => file,
content => '/etc/puppetlabs/code/environments/production/files/run-puppet.sh',
mode => '0755',
}

cron {'run-puppet':
command => '/usr/local/bin/run-puppet',
hour => '*',
minute => '*/5',
}