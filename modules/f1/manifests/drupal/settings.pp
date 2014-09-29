class f1::drupal::settings( $directory ) {
  $settings_file = "${directory}/settings.php"

  file { $settings_file:
    ensure => 'exists',
    mode   => '0540',
  }
}

class f1::drupal::site(  ) {

}


class f1::drupal::config {

}
