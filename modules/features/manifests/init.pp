class features{

	exec {"squid3 -k reconfigure":
    provider => shell,
    require => [ Class["squid"], Class["arquivos"]]
  }
}