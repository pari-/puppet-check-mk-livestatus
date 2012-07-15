class check_mk_livestatus (
  $ensure                       = $check_mk_livestatus::params::ensure,
  $package                      = $check_mk_livestatus::params::package,
  $auto_upgrade                 = $check_mk_livestatus::params::auto_upgrade,
  $nagios3_config               = $check_mk_livestatus::params::nagios3_config,
  $service_name                 = $check_mk_livestatus::params::service_name,
  $service_ensure               = $check_mk_livestatus::params::service_ensure,
  $service_enable               = $check_mk_livestatus::params::service_enable,
  $debug_on                     = $check_mk_livestatus::params::debug_on,
  $enable_livestatus_neb_module = $check_mk_livestatus::params::enable_livestatus_neb_module,
  $enable_broker_everything     = $check_mk_livestatus::params::enable_broker_everything,
  $xinetd_config                = $check_mk_livestatus::params::xinetd_config,
  $xinetd_type                  = $check_mk_livestatus::params::xinetd_type,
  $xinetd_port                  = $check_mk_livestatus::params::xinetd_port,
  $xinetd_socket_type           = $check_mk_livestatus::params::xinetd_socket_type,
  $xinetd_protocol              = $check_mk_livestatus::params::xinetd_protocol,
  $xinetd_wait                  = $check_mk_livestatus::params::xinetd_wait,
  $xinetd_cps_limit             = $check_mk_livestatus::params::xinetd_cps_limit,
  $xinetd_cps_ban               = $check_mk_livestatus::params::xinetd_cps_ban,
  $xinetd_instances             = $check_mk_livestatus::params::xinetd_instances,
  $xinetd_per_source            = $check_mk_livestatus::params::xinetd_per_source,
  $xinetd_flags                 = $check_mk_livestatus::params::xinetd_flags,
  $xinetd_user                  = $check_mk_livestatus::params::xinetd_user,
  $xinetd_server                = $check_mk_livestatus::params::xinetd_server,
  $xinetd_server_args           = $check_mk_livestatus::params::xinetd_server_args,
  $xinetd_only_from             = $check_mk_livestatus::params::xinetd_only_from,
  $xinetd_disable               = $check_mk_livestatus::params::xinetd_disable
) inherits check_mk_livestatus::params {

  include nagios3

  class {'check_mk_livestatus::package':}
  class {'check_mk_livestatus::config':}
  class {'check_mk_livestatus::service':}

  if $ensure == 'present' {
    Class['check_mk_livestatus::package'] -> Class['check_mk_livestatus::config'] ~> Class['check_mk_livestatus::service']
  } else {
    Class['check_mk_livestatus::service'] -> Class['check_mk_livestatus::package']
  }
}
