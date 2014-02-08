class bash (
  $color_green = $bash::params::green,
  $color_red   = $bash::params::red,
  $options     = params_lookup( 'options' ),
) inherits bash::params {

  bash::prompt { '/etc/skel/.bashrc':
    color => $color_green,
  }

  bash::prompt { '/root/.bashrc':
    color => $color_red,
  }

  package { $packages:
    ensure => latest,
  }

  class { 'bash::aliases': }
}
