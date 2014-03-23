sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu precise main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y ros-groovy-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/groovy/setup.bash" >> ~/.bashrc
source ~/.bashrc
source /opt/ros/groovy/setup.bash
sudo apt-get install python-rosinstall
 
 
 
 
mkdir ~/catkin_ws
cd ~/catkin_ws
mkdir src
cd src
 
sudo apt-get install -y ros-groovy-gscam
#sudo apt-get install -y ros-groovy-openni-launch
