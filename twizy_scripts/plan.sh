#!/bin/bash

export DISPLAY=:1

export ROS_LOCALHOST_ONLY=2
export ROS_DOMAIN_ID=2

source install/setup.bash

ros2 launch autoware_launch planning_simulator.launch.xml map_path:=$HOME/autoware_map/sample-map-planning vehicle_model:=twizy_vehicle sensor_model:=twizy_sensor_kit

