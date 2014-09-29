class projects::km {
  php::project { 'km':
    source => 'git@code.forumone.com:~slucero/f1/slucero-km.git',
    mysql  => 'local_km',
    php    => '5.4.9',
    nginx  => 'slucero/nginx/f1drupal.nginx.conf.erb',
  }
}
