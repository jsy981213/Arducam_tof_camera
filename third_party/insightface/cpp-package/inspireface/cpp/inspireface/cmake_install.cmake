# Install script for directory: /home/jsy/Desktop/Arducam_tof_camera/third_party/insightface/cpp-package/inspireface/cpp/inspireface

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/jsy/Desktop/Arducam_tof_camera/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/InspireFace/lib/libInspireFace.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/InspireFace/lib/libInspireFace.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/InspireFace/lib/libInspireFace.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jsy/Desktop/Arducam_tof_camera/install/InspireFace/lib/libInspireFace.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/jsy/Desktop/Arducam_tof_camera/install/InspireFace/lib" TYPE SHARED_LIBRARY FILES "/home/jsy/Desktop/Arducam_tof_camera/lib/libInspireFace.so")
  if(EXISTS "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/InspireFace/lib/libInspireFace.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/InspireFace/lib/libInspireFace.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/InspireFace/lib/libInspireFace.so"
         OLD_RPATH "/home/jsy/Desktop/Arducam_tof_camera/third_party/insightface/cpp-package/inspireface/cpp/inspireface/MNN:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/InspireFace/lib/libInspireFace.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jsy/Desktop/Arducam_tof_camera/install/InspireFace/include/inspireface.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/jsy/Desktop/Arducam_tof_camera/install/InspireFace/include" TYPE FILE FILES "/home/jsy/Desktop/Arducam_tof_camera/third_party/insightface/cpp-package/inspireface/cpp/inspireface/c_api/inspireface.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jsy/Desktop/Arducam_tof_camera/install/InspireFace/include/intypedef.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/jsy/Desktop/Arducam_tof_camera/install/InspireFace/include" TYPE FILE FILES "/home/jsy/Desktop/Arducam_tof_camera/third_party/insightface/cpp-package/inspireface/cpp/inspireface/c_api/intypedef.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jsy/Desktop/Arducam_tof_camera/install/InspireFace/include/herror.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/jsy/Desktop/Arducam_tof_camera/install/InspireFace/include" TYPE FILE FILES "/home/jsy/Desktop/Arducam_tof_camera/third_party/insightface/cpp-package/inspireface/cpp/inspireface/include/inspireface/herror.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jsy/Desktop/Arducam_tof_camera/install/version.txt")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/jsy/Desktop/Arducam_tof_camera/install" TYPE FILE FILES "/home/jsy/Desktop/Arducam_tof_camera/third_party/insightface/cpp-package/inspireface/cpp/inspireface/version.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jsy/Desktop/Arducam_tof_camera/install/InspireFace/include/inspireface//")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/jsy/Desktop/Arducam_tof_camera/install/InspireFace/include/inspireface/" TYPE DIRECTORY FILES "/home/jsy/Desktop/Arducam_tof_camera/third_party/insightface/cpp-package/inspireface/cpp/inspireface/include/inspireface/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jsy/Desktop/Arducam_tof_camera/install/InspireFace/include//inspirecv")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/jsy/Desktop/Arducam_tof_camera/install/InspireFace/include/" TYPE DIRECTORY FILES "/home/jsy/Desktop/Arducam_tof_camera/third_party/insightface/cpp-package/inspireface/3rdparty/InspireCV/include/inspirecv")
endif()

