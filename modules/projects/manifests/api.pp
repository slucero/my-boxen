class projects::api {
  #php::project { 'api':
    #mysql => true,
    #php   => '5.4.15',
    #nginx => 'php/nginx/nginx.conf.erb',
  #}
}
