# -*- mode: ruby -*-
# vi: set ft=ruby :
VM_NAME = "ontrail.local".freeze
VAGRANT_VERSION = "2".freeze
BOX_NAME = "ubuntu/trusty64".freeze
STATIC_IP_ADDRESS = "172.28.128.7".freeze


Vagrant.configure(VAGRANT_VERSION) do |config|
  config.vm.box = BOX_NAME
  config.vm.define VM_NAME
  config.vm.hostname = VM_NAME

  config.vm.network "private_network", ip: STATIC_IP_ADDRESS 
  config.vm.synced_folder ".", "/vagrant", type: "nfs"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
  end

  config.vm.provision "shell", path: "install.sh"
  config.vm.provision "file", source: "~/.gitconfig", destination: ".gitconfig"
end