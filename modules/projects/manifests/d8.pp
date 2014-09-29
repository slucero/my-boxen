class projects::d8 {
  php::project { 'd8':
    source => 'http://git.drupal.org/project/drupal.git',
    mysql  => true,
    php    => '5.4.9',
    nginx  => 'slucero/nginx/f1drupal.nginx.conf.erb',
  }
}
