# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

# Define parâmetros no VirtualBox 
 config.vm.provider "virtualbox" do |v|
  v.gui = false
  v.name = "prt"
  v.memory = 2048
  v.cpus = 2
end 

# Define nome no comando Vagrant global-status
config.vm.define "PRT"

 # Eu uso o precise64, mas caso tenha problemas use o precise32 alterando a linha a baixo 
 # e baixando o mesmo pelo link que consta no arquivo dicas.txt
 # 
 config.vm.box = "hashicorp/precise64"
 config.vm.box_url = "file:///home/dodozaum/Vagrant_Ngix/precise64.box"

 #config.vm.box_url = "file:///Users/paulosausen/ubuntu/precise64/precise32.box"

config.vm.network :private_network, ip: "192.168.12.123"

# Define o path para os diretórios puppet, os diretórios/arquivos devem estar criados antes
config.vm.provision :puppet do |puppet|
         puppet.manifests_path = "manifests"
         puppet.module_path = "modules"
         puppet.options = ['--verbose']
    end
  
config.vm.post_up_message = "Seu ambiente está pronto. Aponte seu browser para ht\
tp://192.168.12.123 para acessar a aplicação."
end
