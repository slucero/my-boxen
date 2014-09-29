class projects::countdown {
  boxen::project { 'countdown':
    #dotenv => true,
    mysql  => true,
    nginx  => true,
    ruby   => '1.9.3',
    source => 'rails/rails',
  }
}
