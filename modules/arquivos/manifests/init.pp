class arquivos {
	
file {'/usr/share/nginx/www/index.html':
     ensure => file,
	require => Class["nginx"],
     owner  => 'root',
     group  => 'root',
     mode   => '0644',
     source => 'puppet:///modules/arquivos/index.html',
   } 
	
file {'/etc/motd.tail':
     ensure => file,
     owner  => 'root',
     group  => 'root',
     mode   => '0644',
     source => 'puppet:///modules/arquivos/mensagem',
   } 

}
