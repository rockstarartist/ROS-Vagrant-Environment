#!/usr/bin/env bash

#Setup the Catkin WorkSpace
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace
cd ~/catkin_ws/
catkin_make

#Add the WorkSpace to the ROS environment
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
