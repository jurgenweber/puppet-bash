# = Class: bash
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
class bash {
  class { 'bash::package': }
  class { 'bash::config': }
}
