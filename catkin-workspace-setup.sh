#!/usr/bin/env bash

#Setup default Catkin WorkSpace
source /opt/ros/kinetic/setup.bash
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace
cd ~/catkin_ws/
catkin_make

#Add the WorkSpace to the ROS environment
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc

#Go over the command line tools
#Use turtlesim to show/describe topics
#http://wiki.ros.org/ROS/Tutorials/UnderstandingNodes
#http://wiki.ros.org/ROS/Tutorials/UnderstandingTopics
#http://wiki.ros.org/ROS/Tutorials/UnderstandingServicesParams


#Create a CatKin package
#http://wiki.ros.org/ROS/Tutorials/CreatingPackage
#http://wiki.ros.org/ROS/Tutorials/BuildingPackages
