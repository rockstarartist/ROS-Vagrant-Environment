# Ubuntu 16.04 LTS with ROS (Robotic Operating System) Software Installed

This git project sets up an Ubuntu LTS desktop vm with GUI and ROS, using Vagrant and a
bash shell script to provision the VM (Virtual Box is the VM Provider).

The intent of this project is to setup a base development robotics stack, to
design and develop the software for a robot using Ubuntu Core with ROS.

## Requirements

* MacOSX 10.10.5 +  (This may work on linux too, it just has not been tested)
* Vagrant 1.8.6 +
* VirtualBox 5.0.4 +

## Installation

#### 1.) Install VirtualBox
Download the latest version of VirtualBox and utilize their instructions on the
installation of their software:
```
https://www.virtualbox.org/
```
#### 2.) Install Vagrant
Download latest version of vagrant from the following site:
```
https://www.vagrantup.com/downloads.html
```
Utilize the Vagrant installer to install Vagrant.

#### 3.) Install this project
Checkout this project into a directory and run the following command in the directory on the command line:
```
vagrant up
vagrant reload default
```
This will then begin to build the VM. This should take approximately
15+ minutes at first, (subsequent VM rebuilds will be about 5 minutes) as it is installing Ubunutu software
and the ROS and Turtlebot software.

Once the console has finished with a slew of installation commands, run the subsequent 'vagrant reload default' command on the command line prompt as shown above. The vagrant reload default will restart the VM so that all
the packages take with the OS.

## Notes
* Default user is: vagrant
* Default password is: vagrant
* Catkin Default workspace is setup and available for use in the Vagrant user directory
* The ROS bridge server can be ran by launching the following command on the command line:
```
roslaunch rosbridge_server rosbridge_websocket.launch
```
