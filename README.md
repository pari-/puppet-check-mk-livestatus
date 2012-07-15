puppet module for check-mk-livestatus
================================

check-mk-livestatus is a general purpose nagios-plugin for retrieving data.
This module will help you to setup and configure check-mk-livestatus. 

Basic usage
-----------

To install and configure check-mk-livestatus:

<pre>
	class {'check_mk_livestatus':
		xinetd_only_from => [ '192.168.0.1' ],
	}
</pre>

For all options see manifests/init.pp

Caveats
-------

The module should be used along my other monitoring-related stuff.

TODOs
-----

None so far.

Testreport
----------
Tested with Debian Squeeze 6.0.5 and check_mk_livestatus (=1.1.12p7-1~bpo60+1) 

Copyright and License
---------------------

Copyright (C) 2012 Patrick Ringl <patrick_@freenet.de>

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.


