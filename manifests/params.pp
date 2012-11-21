class bash::params {
  case $::lsbdistcodename {
    'squeeze': {
      $green = hiera('green')
      $red   = hiera('red')
    }
    default: {
      fail("Module ${module_name} does not support ${::lsbdistcodename}")
    }
  }
}
