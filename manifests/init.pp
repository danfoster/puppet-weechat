# == Class: weechat
#
# Manages weechat, the IRC client
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Examples
#
#  class { 'weechat':
#  }
#
# === Authors
#
# Dan Foster <dan@zem.org.uk>
#
# === Copyright
#
# Copyright 2015 Dan Foster, unless otherwise noted.
#
class weechat (
  $weechat_port = $::weechat::params::weechat_port
) inherits weechat::params {
  $_packages  = $weechat::params::packages
  package { $_packages:
    ensure => present
  }

  if defined(Class['firewall']) {
  	firewall { "050 accept Weechat port":
      port   => $weechat_port,
      proto  => tcp,
  	  action => accept,
    }
  }

}
