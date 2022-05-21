# reMARS-MiniPupper

* Clone Packages

```sh
cd ~/environment
git clone https://github.com/0nhc/reMARS-MiniPupper.git
```

* Install Dependencies

```sh
sudo apt-get update
cd reMARS-MiniPupper/robot_ws
rosdep install --from src -i -y
```

* Compile Robot Applications and Set Executable

```sh
colcon build
cd install/mini_pupper_dance/share/mini_pupper_dance/scripts/
sudo chmod +x *
```

* Compile Simulation Package

```sh
cd ~/environment/reMARS-MiniPupper/simulation_ws/
colcon build
```

* Launch Simulation

```sh
# terminal 1
export DISPLAY=:1
source /opt/ros/melodic/setup.bash
source ~/environment/reMARS-MiniPupper/simulation_ws/install/setup.bash
source ~/environment/reMARS-MiniPupper/robot_ws/install/setup.bash
roslaunch mini_pupper_simulation gazebo.launch
```

* Launch Robot Application (Dancing Demo)

```sh
# terminal 2
source /opt/ros/melodic/setup.bash
source ~/environment/reMARS-MiniPupper/simulation_ws/install/setup.bash
source ~/environment/reMARS-MiniPupper/robot_ws/install/setup.bash
roslaunch mini_pupper_dance dance.launch hardware_connected:=false
```

* Send a Message to Make Robot Dancing

```sh
# terminal 3
source /opt/ros/melodic/setup.bash
rostopic pub /dance_config std_msgs/String "data: 'demo'"     
```
