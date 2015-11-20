#
#
#
class bash (
  $root_prompt    = undef,
  $default_prompt = undef,
  $options        = undef,
  $version        = installed,
) inherits bash::params {

  package { $bash::params::packages:
    ensure => $version,
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
