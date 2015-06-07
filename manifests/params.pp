# == Class: weechat::params
class weechat::params {
  case $::osfamily {
    'redhat': {
      $packages = ['weechat', 'python-nbxmpp']
    }
    'debian': {
      $packages = ['weechat', 'python-xmpp']
    }
    default: {
      $packages = ['weechat', 'python-xmpp']
    }
  }
}
