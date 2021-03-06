#
#
#
class bash (
  $root_prompt    = undef,
  $default_prompt = undef,
  $options        = undef,
  $version        = installed,
) inherits ::bash::params {

  package { $bash::params::packages:
    ensure => $version,
  }

  bash::prompt { $bash::params::bashrc:
    options => $options,
    color   => $bash::params::green,
    prompt  => $default_prompt,
  }

  bash::prompt { '/root/.bashrc':
    options => $options,
    color   => $bash::params::red,
    prompt  => $root_prompt,
  }

  class { 'bash::aliases': }
}
