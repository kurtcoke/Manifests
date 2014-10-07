  exec { "/usr/bin/wget https://raw.githubusercontent.com/kurtcoke/bashscripts/master/debian_bashrc":

      cwd => "/tmp",
  }




package { 'bash':
  ensure => installed,
}

file { '/root/.bashrc':
  ensure => present,
  source  => "/tmp/debian_bashrc",
}
