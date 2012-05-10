define bash::prompt($color = false) {
  $t_color = $color ? {
    false   => '\033[01;32m',
    default => $color,
  }

  file { $name:
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template("bash/${::lsbdistcodename}/etc/skel/bashrc.erb"),
  }
}