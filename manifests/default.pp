group{ 'puppet': ensure  => present }

node 'yaoman.local' {
    class { 'apt': }
    apt::ppa { 'ppa:chris-lea/node.js': }

    package {'nodejs': ensure => present}

    package { 'compass': 
        ensure => present,
        provider => 'gem',
    }
    
    package { 'generator-webapp': 
        ensure => present,
        provider => 'npm',
    }
}
