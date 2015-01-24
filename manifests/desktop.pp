class philduffy::desktop {
  notice('Installing philduffy::desktop')

  include alfred
  include brewcask
  include chrome::canary
  include iterm2::stable
  include redis
  include virtualbox

  # Brew Cask
  package {
    [
      'caffeine',
      'firefox',
      'google-chrome',
      'mailbox',
      'vlc'
    ]:
    provider => 'brewcask',
    install_options => ["--appdir=/Applications"]
  }

  exec {'brew cask alfred link':}

  # Homebrew
  package {
    [
      'direnv'
    ]:
    ensure => installed
  }
}
