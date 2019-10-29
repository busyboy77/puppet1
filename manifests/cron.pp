cron {'cron example':
command => '/bin/date +%F',
user => 'nmr',
hour => '0',
minute => '0',
environment => ['MAILTO=nmr','PATH=/bin'],
weekday => ['Saturday','Sunday','Monday','Tuesday','Wednesday','Thursday','Friday'],
}
