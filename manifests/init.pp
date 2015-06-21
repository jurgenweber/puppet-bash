#
#
#
class bash (
  $color_green    = $bash::params::green,
  $color_red      = $bash::params::red,
  $root_prompt    = undef,
  $default_prompt = undef,
) inherits params {

  package { $params::packages:
    ensure => installed,
  }

  bash::prompt { '/etc/skel/.bashrc':
    color  => $bash::params::green,
    prompt => $default_prompt,
  }

  bash::prompt { '/root/.bashrc':
    color  => $bash::params::red,
    prompt => $root_prompt,
  }

  class { 'bash::aliases': }
}
