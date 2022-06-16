#!/bin/bash
source /opt/ros/noetic/setup.bash
source /usr/share/gazebo-11/setup.sh
source ./install/setup.bash
source ./install/setup.bash
printenv

exec "${@:1}"