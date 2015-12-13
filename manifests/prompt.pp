#
#
#
define bash::prompt (
  $color    = $bash::params::green,
  $prompt   = undef,
  $options  = undef,
) {

  include bash::params

  file { $name:
    owner   => 'root',
    group   => $bash::admin_group,
    mode    => '0644',
    content => template("bash/${::operatingsystem}/etc/skel/bashrc.erb"),
  }

}
