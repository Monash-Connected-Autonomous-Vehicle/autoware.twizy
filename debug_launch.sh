#!/bin/bash

source install/setup.bash
export DISPLAY=:1

# Load PEAK USB CAN driver
sudo modprobe peak_usb

# Restart CAN interface with 500 kbit/s bitrate
sudo ip link set down can0
sudo ip link set can0 up type can bitrate 500000

ros2 launch autoware_launch autoware.launch.xml \
map_path:=$HOME/autoware_map/g03_closed \
sensor_model:=twizy_sensor_kit \
vehicle_model:=twizy_vehicle \
vehicle_id:=twizy \
traffic_light_recognition/use_high_accuracy_detection:=false \
launch_perception:=true \
2>&1 | tee debug_launch.log
