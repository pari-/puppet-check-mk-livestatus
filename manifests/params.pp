class check_mk_livestatus::params {
  $ensure = 'present'
  $auto_upgrade = false
  $service_ensure = 'running'
  $service_enable = true

  $enable_livestatus_neb_module = true
  $enable_broker_everything = true
  $debug_on = '1'

  $xinetd_type = 'UNLISTED'
  $xinetd_port = '6557'
  $xinetd_socket_type = 'stream'
  $xinetd_protocol = 'tcp'
  $xinetd_wait = 'no'
  $xinetd_cps_limit = '100'
  $xinetd_cps_ban = '3'
  $xinetd_instances = '500'
  $xinetd_per_source = '250'
  $xinetd_flags = 'NODELAY'
  $xinetd_user = 'nagios'
  $xinetd_server = '/usr/bin/unixcat'
  $xinetd_server_args = '/var/lib/nagios3/rw/live'
  $xinetd_only_from = [ '127.0.0.1' ]
  $xinetd_disable = 'no'

  case $::operatingsystem {
    'Debian': {
      $package = [ 'check-mk-livestatus', 'xinetd' ]
      $nagios3_config = '/etc/nagios3/nagios.cfg'
      $service_name = 'xinetd'
      $xinetd_config = '/etc/xinetd.d/livestatus'
    }
    default: {
      fail("\"${module_name}\" is not supported on \"${::operatingsystem}\"")
    }
  }

}
