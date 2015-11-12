#
#
#
class bash (
  $root_prompt    = undef,
  $default_prompt = undef,
  $options        = undef,
) inherits bash::params {

  package { $bash::params::packages:
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
