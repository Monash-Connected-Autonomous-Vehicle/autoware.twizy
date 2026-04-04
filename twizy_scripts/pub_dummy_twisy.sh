#!/bin/bash
# Usage: ./pub_dummy_twisy.sh [topic]
# Default topic: /dummy/twist

TOPIC="${1:-/sensing/vehicle_velocity_converter/twist_with_covariance}"p

ros2 topic pub -r 10 "$TOPIC" geometry_msgs/msg/TwistWithCovarianceStamped "
header:
  frame_id: base_link
twist:
  twist:
    linear:  {x: 0.0, y: 0.0, z: 0.0}
    angular: {x: 0.0, y: 0.0, z: 0.0}
  covariance: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
"
