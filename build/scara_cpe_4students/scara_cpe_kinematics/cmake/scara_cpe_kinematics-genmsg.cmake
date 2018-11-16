# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "scara_cpe_kinematics: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(scara_cpe_kinematics_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/fs03/share/users/nicolas.clerc/home/ds_clerc_ros_ws/src/scara_cpe_4students/scara_cpe_kinematics/srv/gotoxy.srv" NAME_WE)
add_custom_target(_scara_cpe_kinematics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scara_cpe_kinematics" "/fs03/share/users/nicolas.clerc/home/ds_clerc_ros_ws/src/scara_cpe_4students/scara_cpe_kinematics/srv/gotoxy.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(scara_cpe_kinematics
  "/fs03/share/users/nicolas.clerc/home/ds_clerc_ros_ws/src/scara_cpe_4students/scara_cpe_kinematics/srv/gotoxy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scara_cpe_kinematics
)

### Generating Module File
_generate_module_cpp(scara_cpe_kinematics
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scara_cpe_kinematics
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(scara_cpe_kinematics_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(scara_cpe_kinematics_generate_messages scara_cpe_kinematics_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/fs03/share/users/nicolas.clerc/home/ds_clerc_ros_ws/src/scara_cpe_4students/scara_cpe_kinematics/srv/gotoxy.srv" NAME_WE)
add_dependencies(scara_cpe_kinematics_generate_messages_cpp _scara_cpe_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scara_cpe_kinematics_gencpp)
add_dependencies(scara_cpe_kinematics_gencpp scara_cpe_kinematics_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scara_cpe_kinematics_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(scara_cpe_kinematics
  "/fs03/share/users/nicolas.clerc/home/ds_clerc_ros_ws/src/scara_cpe_4students/scara_cpe_kinematics/srv/gotoxy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scara_cpe_kinematics
)

### Generating Module File
_generate_module_lisp(scara_cpe_kinematics
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scara_cpe_kinematics
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(scara_cpe_kinematics_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(scara_cpe_kinematics_generate_messages scara_cpe_kinematics_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/fs03/share/users/nicolas.clerc/home/ds_clerc_ros_ws/src/scara_cpe_4students/scara_cpe_kinematics/srv/gotoxy.srv" NAME_WE)
add_dependencies(scara_cpe_kinematics_generate_messages_lisp _scara_cpe_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scara_cpe_kinematics_genlisp)
add_dependencies(scara_cpe_kinematics_genlisp scara_cpe_kinematics_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scara_cpe_kinematics_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(scara_cpe_kinematics
  "/fs03/share/users/nicolas.clerc/home/ds_clerc_ros_ws/src/scara_cpe_4students/scara_cpe_kinematics/srv/gotoxy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scara_cpe_kinematics
)

### Generating Module File
_generate_module_py(scara_cpe_kinematics
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scara_cpe_kinematics
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(scara_cpe_kinematics_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(scara_cpe_kinematics_generate_messages scara_cpe_kinematics_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/fs03/share/users/nicolas.clerc/home/ds_clerc_ros_ws/src/scara_cpe_4students/scara_cpe_kinematics/srv/gotoxy.srv" NAME_WE)
add_dependencies(scara_cpe_kinematics_generate_messages_py _scara_cpe_kinematics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scara_cpe_kinematics_genpy)
add_dependencies(scara_cpe_kinematics_genpy scara_cpe_kinematics_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scara_cpe_kinematics_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scara_cpe_kinematics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scara_cpe_kinematics
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(scara_cpe_kinematics_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scara_cpe_kinematics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scara_cpe_kinematics
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(scara_cpe_kinematics_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scara_cpe_kinematics)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scara_cpe_kinematics\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scara_cpe_kinematics
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(scara_cpe_kinematics_generate_messages_py std_msgs_generate_messages_py)
endif()
