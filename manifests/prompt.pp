#
#
#
define bash::prompt (
  $color    = $bash::params::green,
  $prompt   = undef,
  $options  = undef,
) {

  file { $name:
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("bash/${::operatingsystem}/etc/skel/bashrc.erb"),
  }

}
