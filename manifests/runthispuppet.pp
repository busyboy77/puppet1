cron {'run-every-2 minutes':
ensure => absent,
command => '/bin/echo hello, how are you puppet >> /tmp/hellow.txt',
hour => '*',
minute => '*/2',
}



