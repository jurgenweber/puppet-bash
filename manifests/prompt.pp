define bash::prompt($color) {
  file { $name:
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("bash/${::lsbdistcodename}/etc/skel/bashrc.erb"),
  }
}