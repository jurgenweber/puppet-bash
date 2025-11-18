#
#
#
define bash::prompt (
  $color    = $bash::params::green,
  $prompt   = undef,
  $options  = undef,
) {

  include bash::params

  $my_os_family = if $facts['os']['family'] {
    $facts['os']['family']
  } else {
    $::osfamily
  }

  file { $name:
    owner   => 'root',
    group   => $bash::admin_group,
    mode    => '0644',
    content => template("bash/${my_os_family}/etc/skel/bashrc.erb"),
  }

}
