class projects::datastore {
  boxen::project { 'datastore':
    #dotenv => true,
    mysql  => true,
    nginx  => true,
    ruby   => '1.9.3',
    source => 'ssh://git@bitbucket.org/srlucero/datastore.git',
  }
}
