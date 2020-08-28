FROM ubuntu
ENV TZ=Asia/Calcutta
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install -y curl gnupg2 lsb-release
RUN curl -s -k https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add -
RUN sh -c 'echo "deb [arch=$(dpkg --print-architecture)] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/ros2-latest.list'
RUN apt update
RUN apt install -y ros-foxy-desktop
RUN apt install -y python3-pip
RUN pip3 install -U argcomplete
RUN apt install -y \
  ros-foxy-navigation2 \
  ros-foxy-nav2-bringup
RUN apt install -y \
  python3-colcon-common-extensions 

RUN curl -sSL http://get.gazebosim.org | sh
RUN apt remove gazebo11  libgazebo11-dev
RUN apt install -y gazebo11 \ 
  ros-foxy-gazebo-ros-pkgs \
  ros-foxy-cartographer \
  ros-foxy-cartographer-ros \
  ros-foxy-navigation2 \
  ros-foxy-nav2-bringup \
  ros-foxy-geometry2 \
  python3-vcstool \
  wget
RUN apt install -y git
RUN mkdir -p ~/turtlebot3_ws/src
RUN git config --global http.sslVerify false
RUN cd ~/turtlebot3_ws \
  && wget --no-check-certificate https://raw.githubusercontent.com/ROBOTIS-GIT/turtlebot3/ros2/turtlebot3.repos \
  && vcs import src < turtlebot3.repos
