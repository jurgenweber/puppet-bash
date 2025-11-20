#
# a class for a custom aliases file using concat
# this will set the ground work,
#
# class { 'bash::aliases': }
#
# then to add custom aliases
#
# bash::add_alias { 'name':
#  cmd  => 'ls /',
# }
#
class bash::aliases (
  $user    = root,
) inherits bash::params {

  if $user == 'root' {
    $path = "/${user}/.bash_aliases"
  } else {
    $path = "/home/${user}/.bash_aliases"
  }

  concat { $path:
   ensure => present,
   group  => $bash::admin_group,
  }

  concat::fragment { 'aliases_header':
    target  => $path,
    content => template("${module_name}/aliases_header.erb"),
    order   => '01',
  }
}
