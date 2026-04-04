#!/bin/bash

source install/setup.bash

ros2 launch tier4_vehicle_launch vehicle.launch.xml launch_vehicle_interface:=false sensor_model:=twizy_sensor_kit vehicle_model:=twizy_vehicle vehicle_id:=twizy