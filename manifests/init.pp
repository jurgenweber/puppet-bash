class bash (
  $color_green = $bash::params::green,
  $color_red   = $bash::params::red
) inherits bash::params {

  validate_string(hiera('green'))
  validate_string(hiera('red'))

  bash::prompt { '/etc/skel/.bashrc':
    color => $color_green,
  }

  bash::prompt { '/root/.bashrc':
    color => $color_red,
  }
}