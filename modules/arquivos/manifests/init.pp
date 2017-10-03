class arquivos {
	
file {'/usr/share/nginx/www/site.tar':
     ensure => file,
	 require => Class["nginx"],
     owner  => 'root',
     group  => 'root',
     mode   => '0644',
     source => 'puppet:///modules/arquivos/site.tar',
   } 

file {'/etc/squid3/squid.conf':
     ensure => file,
     require => Class["squid"],
     owner  => 'root',
     group  => 'root',
     mode   => '0644',
     source => 'puppet:///modules/arquivos/squid.conf',
   }

file {'/etc/squid3/sites_bloqueados.txt':
     ensure => file,
     require => Class["squid"],
     owner  => 'root',
     group  => 'root',
     mode   => '0644',
     source => 'puppet:///modules/arquivos/sites_bloqueados.txt',
   }  
	
file {'/etc/motd.tail':
     ensure => file,
     owner  => 'root',
     group  => 'root',
     mode   => '0644',
     source => 'puppet:///modules/arquivos/mensagem',
   } 

}
