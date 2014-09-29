class projects::chrr {
  php::project { 'chrr':
    source => 'ssh://git@code.forumone.com:vagrant/scaffold.git',
    mysql  => 'local_chrr',
    php    => '5.4.9',
    nginx  => 'slucero/nginx/f1drupal.nginx.conf.erb',
  }
}
