#!/bin/bash

source install/setup.bash

ros2 launch autoware_launch autoware.launch.xml 2>&1 | tee output.txt
