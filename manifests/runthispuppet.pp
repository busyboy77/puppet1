cron {'run-every-2 minutes':
command => '/bin/echo hello, how are you puppet >> /tmp/hellow.txt',
hours => '*',
minute => '*/2',
}



