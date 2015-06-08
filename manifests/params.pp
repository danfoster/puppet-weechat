# == Class: weechat::params
class weechat::params {
  case $::osfamily {
    'redhat': {
      # python-xmpp is provided by EPEL for RHEL<7. NEed to rebuild the source RPM for RHEL 7.
      $packages = ['weechat', 'python-xmpp']
    }
    'debian': {
      $packages = ['weechat', 'python-xmpp']
    }
    default: {
      $packages = ['weechat', 'python-xmpp']
    }
  }
  $weechat_port = 9001
}
