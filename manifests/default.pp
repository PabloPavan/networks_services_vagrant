
Exec { path => [ "/usr/bin:/usr/sbin:/bin:/usr/local/bin:/usr/local/sbin:/sbin" ] }

package { [
    'vim',
    'byobu',
    'htop',
    'links'
  ]:
  require => Class["system-update"],
  ensure  => 'installed',
}
	
include system-update
include nginx
include arquivos


