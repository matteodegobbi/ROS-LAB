# Install script for directory: /home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/intro_tutorial/srv" TYPE FILE FILES
    "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/srv1.srv"
    "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/robotservice.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/intro_tutorial/msg" TYPE FILE FILES "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/msg/msg1.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/intro_tutorial/cmake" TYPE FILE FILES "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/catkin_generated/installspace/intro_tutorial-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/devel/include/intro_tutorial")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/devel/share/roseus/ros/intro_tutorial")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/devel/share/common-lisp/ros/intro_tutorial")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/devel/share/gennodejs/ros/intro_tutorial")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/devel/lib/python3/dist-packages/intro_tutorial")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/devel/lib/python3/dist-packages/intro_tutorial")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/catkin_generated/installspace/intro_tutorial.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/intro_tutorial/cmake" TYPE FILE FILES "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/catkin_generated/installspace/intro_tutorial-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/intro_tutorial/cmake" TYPE FILE FILES
    "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/catkin_generated/installspace/intro_tutorialConfig.cmake"
    "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/catkin_generated/installspace/intro_tutorialConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/intro_tutorial" TYPE FILE FILES "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/package.xml")
endif()

