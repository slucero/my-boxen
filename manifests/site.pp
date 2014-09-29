require boxen::environment
require homebrew
require gcc

Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => $luser,

  path => [
    "${boxen::config::home}/rbenv/shims",
    "${boxen::config::home}/rbenv/bin",
    "${boxen::config::home}/rbenv/plugins/ruby-build/bin",
    "${boxen::config::home}/homebrew/bin",
    '~/bin',
    '/usr/bin',
    '/bin',
    '/usr/sbin',
    '/sbin'
  ],

  environment => [
    "HOMEBREW_CACHE=${homebrew::config::cachedir}",
    "HOME=/Users/${::luser}"
  ]
}

File {
  group => 'staff',
  owner => $luser
}

Package {
  provider => homebrew,
  require  => Class['homebrew']
}

Repository {
  provider => git,
  extra    => [
    '--recurse-submodules'
  ],
  require  => Class['git']
}

Service {
  provider => ghlaunchd
}

Homebrew::Formula <| |> -> Package <| |>

node default {
  # core modules, needed for most things
  include git
  include hub
  #include nginx
  include mysql
  include dnsmasq
  #include people::slucero::dnsmasq

  # fail if FDE is not enabled
  if $::root_encrypted == 'no' {
    fail('Please enable full disk encryption and try again')
  }

  # node versions
  #include nodejs::v0_4
  #include nodejs::v0_6
  #include nodejs::v0_8
  include nodejs::v0_10

  ### Ruby Development ###
  include ruby::1_8_7
  include ruby::1_9_2
  include ruby::1_9_3
  include ruby::2_0_0

  # Set global ruby version
  class { 'ruby::global':
    version => '1.9.3'
  }

  ruby::gem { "pry for 1.9.3":
    gem => 'pry',
    ruby => '1.9.3',
  }
  ruby::gem { "colorize for 1.9.3":
    gem => 'colorize',
    ruby => '1.9.3',
  }

  ### PHP development ###
  require php
  include php::5_4_9
  $version = '5.4.9'

  # Install location
  $dest = "${php::config::root}/versions/${version}"

  # Log locations
  $error_log = "${php::config::logdir}/${version}.error.log"

  # Config locations
  $version_config_root  = "${php::config::configdir}/${version}"
  $php_ini              = "${version_config_root}/php.ini"
  $conf_d               = "${version_config_root}/conf.d"

  File <| title == $php_ini |> {
    content => template('slucero/php.ini.erb')
  }

  class { 'php::global':
    version => '5.4.9',
  }

  php::extension::xdebug { 'xdebug for 5.4.9':
    version => '2.2.1',
    php     => '5.4.9',
  }

  # common, useful packages
  package {
    [
      'ack',
      'autojump',
      'findutils',
      'gnu-tar',
      'tree',
      #'wget' // Downloaded in puppet-wget
    ]:
  }

  file { "${boxen::config::srcdir}/our-boxen":
    ensure => link,
    target => $boxen::config::repodir
  }
}
