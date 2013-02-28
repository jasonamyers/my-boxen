class people::jasonamyers {
  include xquartz
  /*include vagrant*/
  include chrome
  include python
  /*include virtualbox*/
  /*include sublime_text_2*/
  /*include spotify*/
  /*include skype*/
  /*include onepassword*/
  /*include iterm2::dev*/
  /*include macvim*/
  /*include heroku*/
  /*include dropbox*/
  /*include divvy*/
  /*include caffeine*/
  /*include colloquy*/
  /*include flux*/
  /*include sizeup*/
  /*include istatmenus4*/

  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  /*$dotfiles = "${my}/dotfiles"*/

  /*repository { $dotfiles:*/
    /*source  => 'jasonamyers/dotfiles',*/
    /*require => File[$my]*/
  /*}*/
 
  package {
    [
        'bash-completion'
        'curl',
        'libevent',
        'mysql',
        'tree',
        'sqlite',
        'gdbm',
        'cmake',
        'pkg-config',
        'readline'
      ]:
  }
 
  /*exec {*/
    /*'dotfiles':*/
        /*command => 'cd ~/my/dotfiles && ./bootstrap.sh'*/
  /*}*/
}
