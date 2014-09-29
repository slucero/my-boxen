class projects::unitedway {
  php::project { 'unitedway':
    source => 'ssh://git@code.forumone.com:vagrant/scaffold.git',
    mysql  => 'local_unitedway',
    php    => '5.4.9',
    nginx  => 'slucero/nginx/f1drupal.nginx.conf.erb',
  }
}
