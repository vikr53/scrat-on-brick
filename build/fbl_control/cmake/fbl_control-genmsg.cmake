# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "fbl_control: 3 messages, 0 services")

set(MSG_I_FLAGS "-Ifbl_control:/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(fbl_control_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/plant_msg.msg" NAME_WE)
add_custom_target(_fbl_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fbl_control" "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/plant_msg.msg" ""
)

get_filename_component(_filename "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/controller_msg.msg" NAME_WE)
add_custom_target(_fbl_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fbl_control" "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/controller_msg.msg" ""
)

get_filename_component(_filename "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/setpt_msg.msg" NAME_WE)
add_custom_target(_fbl_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fbl_control" "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/setpt_msg.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(fbl_control
  "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/plant_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fbl_control
)
_generate_msg_cpp(fbl_control
  "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/controller_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fbl_control
)
_generate_msg_cpp(fbl_control
  "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/setpt_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fbl_control
)

### Generating Services

### Generating Module File
_generate_module_cpp(fbl_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fbl_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(fbl_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(fbl_control_generate_messages fbl_control_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/plant_msg.msg" NAME_WE)
add_dependencies(fbl_control_generate_messages_cpp _fbl_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/controller_msg.msg" NAME_WE)
add_dependencies(fbl_control_generate_messages_cpp _fbl_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/setpt_msg.msg" NAME_WE)
add_dependencies(fbl_control_generate_messages_cpp _fbl_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fbl_control_gencpp)
add_dependencies(fbl_control_gencpp fbl_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fbl_control_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(fbl_control
  "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/plant_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fbl_control
)
_generate_msg_eus(fbl_control
  "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/controller_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fbl_control
)
_generate_msg_eus(fbl_control
  "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/setpt_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fbl_control
)

### Generating Services

### Generating Module File
_generate_module_eus(fbl_control
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fbl_control
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(fbl_control_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(fbl_control_generate_messages fbl_control_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/plant_msg.msg" NAME_WE)
add_dependencies(fbl_control_generate_messages_eus _fbl_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/controller_msg.msg" NAME_WE)
add_dependencies(fbl_control_generate_messages_eus _fbl_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/setpt_msg.msg" NAME_WE)
add_dependencies(fbl_control_generate_messages_eus _fbl_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fbl_control_geneus)
add_dependencies(fbl_control_geneus fbl_control_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fbl_control_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(fbl_control
  "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/plant_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fbl_control
)
_generate_msg_lisp(fbl_control
  "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/controller_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fbl_control
)
_generate_msg_lisp(fbl_control
  "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/setpt_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fbl_control
)

### Generating Services

### Generating Module File
_generate_module_lisp(fbl_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fbl_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(fbl_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(fbl_control_generate_messages fbl_control_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/plant_msg.msg" NAME_WE)
add_dependencies(fbl_control_generate_messages_lisp _fbl_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/controller_msg.msg" NAME_WE)
add_dependencies(fbl_control_generate_messages_lisp _fbl_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/setpt_msg.msg" NAME_WE)
add_dependencies(fbl_control_generate_messages_lisp _fbl_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fbl_control_genlisp)
add_dependencies(fbl_control_genlisp fbl_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fbl_control_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(fbl_control
  "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/plant_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fbl_control
)
_generate_msg_nodejs(fbl_control
  "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/controller_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fbl_control
)
_generate_msg_nodejs(fbl_control
  "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/setpt_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fbl_control
)

### Generating Services

### Generating Module File
_generate_module_nodejs(fbl_control
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fbl_control
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(fbl_control_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(fbl_control_generate_messages fbl_control_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/plant_msg.msg" NAME_WE)
add_dependencies(fbl_control_generate_messages_nodejs _fbl_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/controller_msg.msg" NAME_WE)
add_dependencies(fbl_control_generate_messages_nodejs _fbl_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/setpt_msg.msg" NAME_WE)
add_dependencies(fbl_control_generate_messages_nodejs _fbl_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fbl_control_gennodejs)
add_dependencies(fbl_control_gennodejs fbl_control_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fbl_control_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(fbl_control
  "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/plant_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fbl_control
)
_generate_msg_py(fbl_control
  "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/controller_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fbl_control
)
_generate_msg_py(fbl_control
  "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/setpt_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fbl_control
)

### Generating Services

### Generating Module File
_generate_module_py(fbl_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fbl_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(fbl_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(fbl_control_generate_messages fbl_control_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/plant_msg.msg" NAME_WE)
add_dependencies(fbl_control_generate_messages_py _fbl_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/controller_msg.msg" NAME_WE)
add_dependencies(fbl_control_generate_messages_py _fbl_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vik/controller_ws/src/skrat-wmr-dev/fbl_control/msg/setpt_msg.msg" NAME_WE)
add_dependencies(fbl_control_generate_messages_py _fbl_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fbl_control_genpy)
add_dependencies(fbl_control_genpy fbl_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fbl_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fbl_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fbl_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(fbl_control_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fbl_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fbl_control
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(fbl_control_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fbl_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fbl_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(fbl_control_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fbl_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fbl_control
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(fbl_control_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fbl_control)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fbl_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fbl_control
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(fbl_control_generate_messages_py std_msgs_generate_messages_py)
endif()
