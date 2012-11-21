class bash::params {
  case $::lsbdistcodename {
    'squeeze', 'maverick', 'natty': {
      $green = hiera('green')
      $red   = hiera('red')
    }
    default: {
      fail("Module ${module_name} does not support ${::lsbdistcodename}")
    }
  }
}
