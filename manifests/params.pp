#
#
#
class bash::params {
  $green      = '\033[01;32m'
  $red        = '\033[01;31m'
  $gray       = '\033[1;30m'
  $light_gray = '\033[0;37m'
  $cyan       = '\033[0;36m'
  $light_cyan = '\033[1;36m'
  $no_colour  = '\033[0m'

  $my_os_family = if $facts['os']['family'] {
    $facts['os']['family']
  } else {
    $::operatingsystem
  }

   case $my_os_family {
    /(Debian|Raspbian|Kali)/: {
      $bashrc = '/etc/skel/.bashrc'
      $packages = [
        'bash',
        'bash-completion',
      ]
      $admin_group = 'root'
    }
    'FreeBSD': {
      $bashrc = '/usr/local/etc/bash.bashrc'
      $packages = [
        'bash',
        'bash-completion',
      ]
      $admin_group = 'wheel'
    }
    'Ubuntu': {
      $bashrc = '/etc/skel/.bashrc'
      $packages = [
        'bash',
        'bash-completion',
      ]
      $admin_group = 'root'
    }
  }
}
