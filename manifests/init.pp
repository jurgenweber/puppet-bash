class bash {
  validate_string(hiera('green'))
  validate_string(hiera('red'))

  bash::prompt { '/etc/skel/.bashrc':
    color => hiera('green'),
  }

  bash::prompt { '/root/.bashrc':
    color => hiera('red'),
  }
}