#!/bin/bash
source /opt/ros/noetic/setup.bash 
source /home/ubuntu/environment/reMARS-MiniPupper/simulation_ws/install/setup.bash
source /home/ubuntu/environment/reMARS-MiniPupper/robot_ws/install/setup.bash
source /home/ubuntu/environment/reMARS-MiniPupper/robot_ws/install/setup.bash
roslaunch mini_pupper_dance dance.launch hardware_connected:=true