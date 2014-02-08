# bash::add_alias { 'name':
#  cmd  => 'ls /',
# }
define bash::add_alias (
 $cmd,
) {

  include bash::aliases

  concat::fragment { "aliases_${name}":
    target  => $bash::aliases::path,
    content => template("${module_name}/add_alias.erb"),
    order   => '10',
  }
}
