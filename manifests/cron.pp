cron {'cron example':
command => '/bin/date +%F'
hour => '*',
minute => '0',
environment => ['MAILTO=nmr','PATH=/bin'],
user => 'nmr',
weekday => ['0','2'',4','5','6'],
}
