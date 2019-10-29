group {'devs':
ensure => present,
gid => '4000',
}

user {'nmr':
ensure => present,
uid => '4001',
home => '/home/nmr',
shell => '/bin/bash',
managehome => true,
groups => ['devs','wheel'],
password => '$1$B1Xk37Bx$9V3sCfBgxXJwmlO/.wCeg/',
}

ssh_authorized_key {'nmr':
user => 'nmr',
type => 'ssh-rsa',
key => 'AAAAB3NzaC1yc2EAAAADAQABAAABgQDGru+Qx9w5b+fzw2rofseN8LegKv7FNPjkqADggWiCuuR1BQNfy6xFAhU4MpuQglRTuHv52CEobA67BrA5SprVG59bIe+oDbnQRB6k4xp3PlWmFaK+xVEUlKDsM7ebAFt2Mlnr9mawMeLDUxTLZG1uGsgcoYCtLYJ/96Q3+pLpVYBTHh2Bi/Q+dnA/bj9ucpD/Xiq+haLOLpF7JSAB2J872/OoYXFIYjCy93a1enYaHBvGfKrV2A/PrR4Uj/1F1zNESIyJX+0V55Hj4E85T+5Fdr7xme0Gen7km6RV8HS/hKX3n5ocdW9B4S6KuxqyYvoTM2d+gyzKPvZqeYD7XvY5BZic1fo2MESOoETfpW7DJn1vqWLbkuLFCNwZB7k1tCi0gT3tvx2tnY9ixAfNxgfq9C1/H+rUMZNYDxGMebMJwgesCmTBatMd9yUYLUUUKrdF4VxxOnJNer+p5J25Vxq2SPJ+Mvyqoaq/b4MOLE1QnDSBWCHwFlGI4Fox2bB8exk=',
}
