class check_mk_livestatus::service {
  service {$check_mk_livestatus::service_name:
    ensure     => $check_mk_livestatus::service_ensure,
    enable     => $check_mk_livestatus::service_enable,
    hasstatus  => false,
    hasrestart => true,
  }
}
