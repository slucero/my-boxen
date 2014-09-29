class projects::fewsnet {
  php::project { 'fewsnet':
    source => 'git@code.forumone.com:fews-net/fews_net-drupal.git',
    mysql  => true,
    php    => '5.4.9',
    nginx  => 'slucero/nginx/f1drupal.nginx.conf.erb',
  }
}
