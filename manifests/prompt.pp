# = Define: bash::prompt
#
# This module manages bash
#
# == Parameters: none
#
# == Actions:
#
# == Requires: see Modulefile
#
# == Sample Usage:
#
define bash::prompt($color) {
  file { $name:
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("bash/${::lsbdistcodename}/etc/skel/bashrc.erb"),
    require => [
      Package['bash'],
      Package['bash-completion']
    ],
  }
}
