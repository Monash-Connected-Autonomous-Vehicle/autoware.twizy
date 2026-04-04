#!/bin/bash

export DISPLAY=:1

export ROS_LOCALHOST_ONLY=2
export ROS_DOMAIN_ID=2

source install/setup.bash

ros2 launch autoware_launch autoware.launch.xml

