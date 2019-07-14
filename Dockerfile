FROM osrf/ros:kinetic-desktop-xenial

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    apt-utils \
    ros-kinetic-desktop-full=1.3.2-0* \
    xauth \
    ros-kinetic-ros-tutorials \
    && rosdep update \
    && rm -rf /var/lib/apt/lists/*
VOLUME ["/home", "/home"]
