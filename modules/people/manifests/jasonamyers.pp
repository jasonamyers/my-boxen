class people::jasonamyers {
  include vagrant
  include chrome
  include python
  include virtualbox
  include sublime_text_2
  include spotify
  include skype
  include onepassword
  include iterm2::dev
  include macvim
  include heroku
  include dropbox
  include divvy
  include caffeine
  include colloquy

  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  repository { $dotfiles:
    source  => 'jasonamyers/dotfiles',
    require => File[$my]
  }
}
