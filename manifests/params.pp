# = Class: bash::params
#
# This module manages bash
#
# == Parameters: none
#
# == Actions:
#
# == Requires: see Modulefile
#
# == Sample Usage:
#
class bash::params {
  case $::lsbdistcodename {
    'squeeze', 'wheezy', 'precise', 'quantal': {
      $color_root = '31'
      $color_user = '32'
    }
    default: {
      fail("Module ${module_name} does not support ${::lsbdistcodename}")
    }
  }
}
