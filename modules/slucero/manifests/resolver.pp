class slucero::resolver( $tld ) {
  require "dnsmasq"
  require "dnsmasq::config"

  file { "/etc/resolvers/${tld}":
    ensure  => "exists",
    content => "nameserver 127.0.0.1",
  }

  file_line { "dnsmasq loopback: ${tld}":
    line    => "address=/${tld}/127.0.0.1",
    path    => $dnsmasq::config::configfile,
    ensure  => 'present',
    require => File[$dnsmasq::config::configfile],
  }
}
