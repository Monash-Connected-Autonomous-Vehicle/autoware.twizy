#!/bin/bash
# Might need to replug if not working

VIDEO_DEVICE=$(v4l2-ctl --list-devices | awk '
  $0 ~ /HD Pro Webcam C920/ { in_device = 1; next }
    in_device && $0 ~ /\/dev\/video[0-9]+/ {
        print $1
	    exit
	      }')

	      if [ -z "$VIDEO_DEVICE" ]; then
		        echo "❌ HD Pro Webcam C920 not found."
			  exit 1
	      fi

	      echo "🚀 Launching HD Pro on $VIDEO_DEVICE"
	      ros2 run usb_cam usb_cam_node_exe --ros-args -p video_device:="$VIDEO_DEVICE"
