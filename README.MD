# Vagrant Provisioned ROS (Robotic Operating System) Virtual Machines

This git project sets up an Ubuntu desktop vm with GUI and ROS, using Vagrant and a
bash shell script to provision the VM (Virtual Box is the VM Provider).

The intent of this project is to setup a base development robotics stack, to
design and develop the software for a robot using Ubuntu Core with ROS.

## Requirements

* MacOSX 10.10.5 +  (This may work on linux too, it just has not been tested)
* Vagrant 1.8.6 +
* VirtualBox 5.0.4 +

## Installation
Please select the branch of the ROS framework version you want installed. Then follow the directions
provided in that branch's README.md file to setup the ROS vm.

The current versions and their branch location:
[kinetic](https://github.com/rockstarartist/ROS-Vagrant-Environment/tree/kinetic)<br/>
[melodic](https://github.com/rockstarartist/ROS-Vagrant-Environment/tree/melodic)

You will need to also install the following software to run the virtual machines that will contain ROS:

#### 1.) Install VirtualBox
Download the latest version of VirtualBox and utilize their instructions on the
installation of their software:
```
https://www.virtualbox.org/
```
##### What is VirtualBox?
> VirtualBox is a powerful x86 and AMD64/Intel64 virtualization product that allows an unmodified operating system with all of its installed software to run in a special environment, on top of your existing operating system.

#### 2.) Install Vagrant
Download latest version of vagrant from the following site:
```
https://www.vagrantup.com/downloads.html
```
##### What is Vagrant?
> Vagrant provides easy to configure, reproducible, and portable work environments built on top of industry-standard technology and controlled by a single consistent workflow to help maximize the productivity and flexibility of you and your team.
>
>In this project, the virtual machine is provisioned on top of VirtualBox. Then, shell scripts automatically install and configure software on the virtual machine.
