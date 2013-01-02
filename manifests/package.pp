# = Class: bash::package
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
class bash::package {
  package { [
    'bash',
    'bash-completion' ]:
      ensure => present,
  }
}
