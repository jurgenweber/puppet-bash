# bash::add_export { 'name':
#  cmd  => 'ls /',
# }
define bash::add_export (
 $cmd,
) {

  include bash::aliases

  concat::fragment { "export_${name}":
    target  => $bash::aliases::path,
    content => template("${module_name}/add_export.erb"),
    order   => '20',
  }
}
