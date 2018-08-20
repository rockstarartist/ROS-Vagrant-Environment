# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

# To use this Vagrant Box, on command line in the directory of this file:
# $> vagrant up
# Login with username: vagrant, password: vagrant via the login prompt on the virtualbox GUI.
Vagrant.configure("2") do |config|

  config.vm.box = "bento/ubuntu-18.04"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true

    # Customize the amount of memory and the number of CPU's allocated on the VM:
    vb.memory = "3072"
    vb.cpus = 2

    # Customize the amount of video RAM for the VM, over 256MB causes instability issues
    vb.customize ["modifyvm", :id, "--vram", "128"]

  end

  # Setup Port Forwarding for rosbridge server
  config.vm.network "forwarded_port", guest: 11311, host: 11311, protocol: "tcp"
  config.vm.network "forwarded_port", guest: 11311, host: 11311, protocol: "udp"
  config.vm.network "forwarded_port", guest: 9090, host: 9090, protocol: "tcp"
  config.vm.network "forwarded_port", guest: 9090, host: 9090, protocol: "udp"

  # Install GUI and virtualbox additions
  config.vm.provision "shell", inline: "sudo apt-get update"
  config.vm.provision "shell", inline: "sudo apt-get -y install --no-install-recommends ubuntu-desktop virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11"
  config.vm.provision "shell", inline: "sudo apt-get -y install gnome-terminal"

  # Install all ROS dependencies and environment stuff for development on VM
  config.vm.provision "shell", path: "ros-bootstrap.sh"

  # Correct RosDep permissions
  config.vm.provision "shell", inline: "sudo rosdep fix-permissions"
  config.vm.provision "shell", inline: "rosdep update", privileged: false

  # Setup Default Catkin Base Project
  # We need to run this as the vagrant user, so that the workspace gets installed correctly
  config.vm.provision "shell", inline: "su -c /vagrant/catkin-workspace-setup.sh vagrant"

end
