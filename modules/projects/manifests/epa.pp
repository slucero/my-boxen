class projects::epa {
  php::project { 'epa':
    source => 'epa@svn-634.devcloud.hosting.acquia.com:epa.git',
    mysql  => 'local_epa',
    php    => '5.4.9',
    nginx  => 'slucero/nginx/f1drupal.nginx.conf.erb',
  }
}
