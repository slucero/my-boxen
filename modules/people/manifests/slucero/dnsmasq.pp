class people::slucero::dnsmasq {
  include dnsmasq

  # Override config file
  file { "${dnsmasq::config::configdir}/dnsmasq.conf":
    source  => "${boxen::config::repodir}/files/dnsmasq.conf"
  }

  # Domain redirect: .f1
  file { '/etc/resolver/f1':
    content => 'nameserver 127.0.0.1',
    group   => 'wheel',
    owner   => 'root',
    require => File['/etc/resolver'],
    notify  => Service['dev.dnsmasq'],
  }

  # Domain redirect: .sl
  file { '/etc/resolver/sl':
    content => 'nameserver 127.0.0.1',
    group   => 'wheel',
    owner   => 'root',
    require => File['/etc/resolver'],
    notify  => Service['dev.dnsmasq'],
  }

  # Domain redirect: .localhost
  file { '/etc/resolver/localhost':
    content => 'nameserver 127.0.0.1',
    group   => 'wheel',
    owner   => 'root',
    require => File['/etc/resolver'],
    notify  => Service['dev.dnsmasq'],
  }
}
