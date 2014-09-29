class projects::openpolicy {
  php::project { 'openpolicy':
    source => 'ssh://git@code.forumone.com:openpolicy/openpolicy-profile.git',
    mysql  => 'local_openpolicy',
    php    => '5.4.9',
    nginx  => 'slucero/nginx/f1drupal.nginx.conf.erb',
  }
}
