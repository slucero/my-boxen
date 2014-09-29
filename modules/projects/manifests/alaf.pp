class projects::alaf {
  php::project { 'alaf':
    source => 'ssh://git@forumone.repositoryhosting.com/forumone/aspen-alaf.git',
    mysql  => 'local_alaf',
    php    => '5.4.9',
    nginx  => 'slucero/nginx/f1drupal.nginx.conf.erb',
  }
}
