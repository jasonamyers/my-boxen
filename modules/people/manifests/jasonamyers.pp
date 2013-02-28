class people::jasonamyers {
  include xquartz
  /*include vagrant*/
  include chrome
  /*include python*/
  include virtualbox
  include sublime_text_2
  include spotify
  include skype
  include onepassword
  include iterm2::dev
  include macvim
  /*include heroku*/
  include dropbox
  /*include divvy*/
  include caffeine
  include colloquy
  include flux
  include sizeup
  /*include istatmenus4*/

  git::config::global { 'user.email':
    value => 'jason@jasonamyers.com'
  }

  git::config::global { 'user.name':
    value => 'Jason Myers'
  }

  git::config::global { 'push.default':
    value => 'simple'
  }

  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  file { $my:
    ensure => "directory",
  }

  repository { $dotfiles:
    source  => 'jasonamyers/dotfiles',
    require => File[$my]
  }
 
  package {
    [
        'bash-completion',
        'curl',
        'libevent',
        'mysql',
        'tree',
        'sqlite',
        'gdbm',
        'cmake',
        'pkg-config',
        'readline',
        'python'
      ]:
  }
 
  exec { 'dotfiles':
    command => 'cd ~/my/dotfiles && ./bootstrap.sh'
  }

  exec { 'pythonbrewlink':
    command => 'brew link python --overwrite'
  }

  exec { 'pipinstallvirtualenvwrapper':
    command => 'pip install virtualenvwrapper'
  }

  exec { 'pipinstallflake8':
    command => 'pip install flake8'
  }

  exec { 'pipinstallipython':
    command => 'pip install ipython'
  }

  exec { 'dotfilessubmodules':
    command => 'cd ~/my/dotfiles && git submodule init && git submodule update'
  }
}
