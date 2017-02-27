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

  config.vm.box = "bento/ubuntu-16.04"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true

    # Customize the amount of memory on the VM:
    vb.memory = "2048"
    vb.cpus = 2
  end

  # Install GUI and virtualbox additions
  config.vm.provision "shell", inline: "sudo apt-get update"
  config.vm.provision "shell", inline: "sudo apt-get -y install --no-install-recommends ubuntu-desktop virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11"
  config.vm.provision "shell", inline: "sudo apt-get -y install gnome-terminal"

  #Install all ROS dependencies and environment stuff for development on VM
  config.vm.provision "shell", path: "ros-bootstrap.sh"
  #Correct RosDep permissions
  config.vm.provision "shell", inline: "sudo rosdep fix-permissions"
  config.vm.provision "shell", inline: "rosdep update", privileged: false

  #Setup Catkin Base Project (Customize to your liking)
  #Currently testing this
  #config.vm.provision "shell", path: "catkin-workspace-setup.sh"

end
