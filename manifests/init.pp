#
#
#
class bash (
  $color_green = $bash::params::green,
  $color_red   = $bash::params::red,
) inherits params {

  package { $params::packages:
    ensure => installed,
  }

  bash::prompt { '/etc/skel/.bashrc':
    color => $color_green,
  }

  bash::prompt { '/root/.bashrc':
    color => $color_red,
  }

  class { 'bash::aliases': }
}
