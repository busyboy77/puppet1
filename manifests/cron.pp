cron {'cron example':
command => '/bin/date +%F'
hours => '*',
minute => '0',
environment => ['MAILTO=nmr','PATH=/bin'],
user => 'nmr',
weekday => ['0','2'',4','5','6'],
}
