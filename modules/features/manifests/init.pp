class features{

	exec {"squid3 -k reconfigure":
    provider => shell,
    require => [ Class["squid"], Class["arquivos"]]
  }

  	
  	exec {"cd /usr/share/nginx/www/ ; tar -xvf site.tar":
    provider => shell,
    require => [Class["arquivos"]]
  }

}