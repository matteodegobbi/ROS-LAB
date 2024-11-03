# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "intro_tutorial: 1 messages, 2 services")

set(MSG_I_FLAGS "-Iintro_tutorial:/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(intro_tutorial_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/msg/msg1.msg" NAME_WE)
add_custom_target(_intro_tutorial_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "intro_tutorial" "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/msg/msg1.msg" ""
)

get_filename_component(_filename "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/srv1.srv" NAME_WE)
add_custom_target(_intro_tutorial_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "intro_tutorial" "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/srv1.srv" ""
)

get_filename_component(_filename "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/robotservice.srv" NAME_WE)
add_custom_target(_intro_tutorial_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "intro_tutorial" "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/robotservice.srv" "intro_tutorial/msg1"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(intro_tutorial
  "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/msg/msg1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intro_tutorial
)

### Generating Services
_generate_srv_cpp(intro_tutorial
  "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/srv1.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intro_tutorial
)
_generate_srv_cpp(intro_tutorial
  "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/robotservice.srv"
  "${MSG_I_FLAGS}"
  "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/msg/msg1.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intro_tutorial
)

### Generating Module File
_generate_module_cpp(intro_tutorial
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intro_tutorial
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(intro_tutorial_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(intro_tutorial_generate_messages intro_tutorial_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/msg/msg1.msg" NAME_WE)
add_dependencies(intro_tutorial_generate_messages_cpp _intro_tutorial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/srv1.srv" NAME_WE)
add_dependencies(intro_tutorial_generate_messages_cpp _intro_tutorial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/robotservice.srv" NAME_WE)
add_dependencies(intro_tutorial_generate_messages_cpp _intro_tutorial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(intro_tutorial_gencpp)
add_dependencies(intro_tutorial_gencpp intro_tutorial_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS intro_tutorial_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(intro_tutorial
  "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/msg/msg1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/intro_tutorial
)

### Generating Services
_generate_srv_eus(intro_tutorial
  "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/srv1.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/intro_tutorial
)
_generate_srv_eus(intro_tutorial
  "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/robotservice.srv"
  "${MSG_I_FLAGS}"
  "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/msg/msg1.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/intro_tutorial
)

### Generating Module File
_generate_module_eus(intro_tutorial
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/intro_tutorial
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(intro_tutorial_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(intro_tutorial_generate_messages intro_tutorial_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/msg/msg1.msg" NAME_WE)
add_dependencies(intro_tutorial_generate_messages_eus _intro_tutorial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/srv1.srv" NAME_WE)
add_dependencies(intro_tutorial_generate_messages_eus _intro_tutorial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/robotservice.srv" NAME_WE)
add_dependencies(intro_tutorial_generate_messages_eus _intro_tutorial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(intro_tutorial_geneus)
add_dependencies(intro_tutorial_geneus intro_tutorial_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS intro_tutorial_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(intro_tutorial
  "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/msg/msg1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intro_tutorial
)

### Generating Services
_generate_srv_lisp(intro_tutorial
  "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/srv1.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intro_tutorial
)
_generate_srv_lisp(intro_tutorial
  "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/robotservice.srv"
  "${MSG_I_FLAGS}"
  "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/msg/msg1.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intro_tutorial
)

### Generating Module File
_generate_module_lisp(intro_tutorial
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intro_tutorial
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(intro_tutorial_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(intro_tutorial_generate_messages intro_tutorial_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/msg/msg1.msg" NAME_WE)
add_dependencies(intro_tutorial_generate_messages_lisp _intro_tutorial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/srv1.srv" NAME_WE)
add_dependencies(intro_tutorial_generate_messages_lisp _intro_tutorial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/robotservice.srv" NAME_WE)
add_dependencies(intro_tutorial_generate_messages_lisp _intro_tutorial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(intro_tutorial_genlisp)
add_dependencies(intro_tutorial_genlisp intro_tutorial_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS intro_tutorial_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(intro_tutorial
  "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/msg/msg1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/intro_tutorial
)

### Generating Services
_generate_srv_nodejs(intro_tutorial
  "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/srv1.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/intro_tutorial
)
_generate_srv_nodejs(intro_tutorial
  "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/robotservice.srv"
  "${MSG_I_FLAGS}"
  "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/msg/msg1.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/intro_tutorial
)

### Generating Module File
_generate_module_nodejs(intro_tutorial
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/intro_tutorial
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(intro_tutorial_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(intro_tutorial_generate_messages intro_tutorial_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/msg/msg1.msg" NAME_WE)
add_dependencies(intro_tutorial_generate_messages_nodejs _intro_tutorial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/srv1.srv" NAME_WE)
add_dependencies(intro_tutorial_generate_messages_nodejs _intro_tutorial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/robotservice.srv" NAME_WE)
add_dependencies(intro_tutorial_generate_messages_nodejs _intro_tutorial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(intro_tutorial_gennodejs)
add_dependencies(intro_tutorial_gennodejs intro_tutorial_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS intro_tutorial_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(intro_tutorial
  "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/msg/msg1.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intro_tutorial
)

### Generating Services
_generate_srv_py(intro_tutorial
  "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/srv1.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intro_tutorial
)
_generate_srv_py(intro_tutorial
  "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/robotservice.srv"
  "${MSG_I_FLAGS}"
  "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/msg/msg1.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intro_tutorial
)

### Generating Module File
_generate_module_py(intro_tutorial
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intro_tutorial
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(intro_tutorial_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(intro_tutorial_generate_messages intro_tutorial_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/msg/msg1.msg" NAME_WE)
add_dependencies(intro_tutorial_generate_messages_py _intro_tutorial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/srv1.srv" NAME_WE)
add_dependencies(intro_tutorial_generate_messages_py _intro_tutorial_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fogliodicarta/Desktop/ROS-LAB/lab1/catkin_ws/src/intro_tutorial/srv/robotservice.srv" NAME_WE)
add_dependencies(intro_tutorial_generate_messages_py _intro_tutorial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(intro_tutorial_genpy)
add_dependencies(intro_tutorial_genpy intro_tutorial_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS intro_tutorial_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intro_tutorial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intro_tutorial
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(intro_tutorial_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/intro_tutorial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/intro_tutorial
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(intro_tutorial_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intro_tutorial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intro_tutorial
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(intro_tutorial_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/intro_tutorial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/intro_tutorial
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(intro_tutorial_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intro_tutorial)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intro_tutorial\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intro_tutorial
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(intro_tutorial_generate_messages_py std_msgs_generate_messages_py)
endif()
