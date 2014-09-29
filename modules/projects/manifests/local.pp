class projects::local {
  php::project { 'local':
    source => '/src/.model/',
    mysql  => 'local_dev',
    php    => '5.4.9',
    nginx  => 'slucero/nginx/f1drupal.nginx.conf.erb',
  }
}
