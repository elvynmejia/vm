**Follow these instructions to setup a virtual machine workspace running Ubuntu**

Download Vagrant: https://www.vagrantup.com/
Download Virtualbox: https://www.virtualbox.org/wiki/Downloads


Create a directory
`mkdir ~/Desktop/vm-workspace` # for example
`cd vm-workspace` 

Clone repo
`git clone xyz`

Copy files to your vm working directory
`cp xyz/Vagrantfile Vagrantfile`
`cp xyz/install.sh install.sh`

Start the virtual machine.
 `vagrant up`

You now have a virtual machine running ubuntu/trusty64
`vagrant ssh` # ssh into the vm


from time to time run `vagrant provision` to get updates

Also note that this vm is assigned a static IP address: `172.28.128.7` please make note of this