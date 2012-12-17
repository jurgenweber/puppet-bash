# = Class: bash::config
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
class bash::config (
  $color_root = hiera('color_root', $bash::params::color_root),
  $color_user = hiera('color_user', $bash::params::color_user),
) inherits bash::params {
  bash::prompt { '/etc/skel/.bashrc':
    color  => $color_user,
  }

  bash::prompt { '/root/.bashrc':
    color  => $color_root,
  }
}
