  exec { "/usr/bin/wget https://raw.githubusercontent.com/kurtcoke/bashscripts/master/.vimrc":

      cwd => "/tmp",
  }




package { 'vim':
  ensure => installed,
}

file { '/root/.vimrc':
  ensure => present,
  source  => "/tmp/.vimrc",
}
