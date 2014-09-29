class projects::f1km {
  php::project { 'f1km':
    source => 'git@code.forumone.com:vagrant/scaffold.git',
    mysql  => 'local_f1km',
    php    => '5.4.9',
    nginx  => 'slucero/nginx/f1drupal.nginx.conf.erb',
  }
}
