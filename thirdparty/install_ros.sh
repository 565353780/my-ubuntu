sudo sh -c "echo \"deb http://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -sc) main\" > /etc/apt/sources.list.d/gazebo-stable.list"
wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
sudo sh -c "echo \"deb https://mirrors.tuna.tsinghua.edu.cn/ros/ubuntu/ $(lsb_release -sc) main\" > /etc/apt/sources.list.d/ros-latest.list"
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update
sudo apt install ros-noetic-desktop-full -y
sudo apt install python3-catkin-tools python3-rosdep python3-rosinstall -y
sudo pip3 install osrf-pycommon rospkg catkin_pkg

sudo sh -c "echo \"151.101.84.133 raw.githubusercontent.com\" >> /etc/hosts"
sudo rosdep init
rosdep update

