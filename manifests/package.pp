class check_mk_livestatus::package {
  if $check_mk_livestatus::ensure == 'present' {
    $package_ensure = $check_mk_livestatus::auto_upgrade ? {
      true  => 'latest',
      false => 'installed',
    }
  } else {
    $package_ensure = 'purged'
  }

  package {$check_mk_livestatus::package:
    ensure          => $package_ensure,
    provider        => 'aptbpo',
    install_options => { '-t' => 'squeeze-backports' },
  }
}
