class philduffy::sublime {
  notice('Installing philduffy::sublime')

  include sublime_text

  # Package Control
  sublime_text::package { 'Package Control':
    source => 'wbond/sublime_package_control'
  }
}
