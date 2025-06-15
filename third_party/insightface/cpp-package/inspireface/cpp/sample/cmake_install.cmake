# Install script for directory: /home/jsy/Desktop/Arducam_tof_camera/third_party/insightface/cpp-package/inspireface/cpp/sample

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
  if(EXISTS "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/Leak" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/Leak")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/Leak"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jsy/Desktop/Arducam_tof_camera/install/sample/Leak")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/jsy/Desktop/Arducam_tof_camera/install/sample" TYPE EXECUTABLE FILES "/home/jsy/Desktop/Arducam_tof_camera/sample/api/Leak")
  if(EXISTS "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/Leak" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/Leak")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/Leak"
         OLD_RPATH "/home/jsy/Desktop/Arducam_tof_camera/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/Leak")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceTrackSample" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceTrackSample")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceTrackSample"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceTrackSample")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/jsy/Desktop/Arducam_tof_camera/install/sample" TYPE EXECUTABLE FILES "/home/jsy/Desktop/Arducam_tof_camera/sample/api/FaceTrackSample")
  if(EXISTS "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceTrackSample" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceTrackSample")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceTrackSample"
         OLD_RPATH "/home/jsy/Desktop/Arducam_tof_camera/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceTrackSample")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceComparisonSample" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceComparisonSample")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceComparisonSample"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceComparisonSample")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/jsy/Desktop/Arducam_tof_camera/install/sample" TYPE EXECUTABLE FILES "/home/jsy/Desktop/Arducam_tof_camera/sample/api/FaceComparisonSample")
  if(EXISTS "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceComparisonSample" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceComparisonSample")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceComparisonSample"
         OLD_RPATH "/home/jsy/Desktop/Arducam_tof_camera/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceComparisonSample")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceCrudSample" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceCrudSample")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceCrudSample"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceCrudSample")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/jsy/Desktop/Arducam_tof_camera/install/sample" TYPE EXECUTABLE FILES "/home/jsy/Desktop/Arducam_tof_camera/sample/api/FaceCrudSample")
  if(EXISTS "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceCrudSample" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceCrudSample")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceCrudSample"
         OLD_RPATH "/home/jsy/Desktop/Arducam_tof_camera/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/FaceCrudSample")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppSessionSample" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppSessionSample")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppSessionSample"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppSessionSample")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/jsy/Desktop/Arducam_tof_camera/install/sample" TYPE EXECUTABLE FILES "/home/jsy/Desktop/Arducam_tof_camera/sample/cpp_api/CppSessionSample")
  if(EXISTS "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppSessionSample" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppSessionSample")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppSessionSample"
         OLD_RPATH "/home/jsy/Desktop/Arducam_tof_camera/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppSessionSample")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppFaceComparisonSample" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppFaceComparisonSample")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppFaceComparisonSample"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppFaceComparisonSample")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/jsy/Desktop/Arducam_tof_camera/install/sample" TYPE EXECUTABLE FILES "/home/jsy/Desktop/Arducam_tof_camera/sample/cpp_api/CppFaceComparisonSample")
  if(EXISTS "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppFaceComparisonSample" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppFaceComparisonSample")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppFaceComparisonSample"
         OLD_RPATH "/home/jsy/Desktop/Arducam_tof_camera/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppFaceComparisonSample")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppFaceCrudSample" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppFaceCrudSample")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppFaceCrudSample"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppFaceCrudSample")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/jsy/Desktop/Arducam_tof_camera/install/sample" TYPE EXECUTABLE FILES "/home/jsy/Desktop/Arducam_tof_camera/sample/cpp_api/CppFaceCrudSample")
  if(EXISTS "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppFaceCrudSample" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppFaceCrudSample")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppFaceCrudSample"
         OLD_RPATH "/home/jsy/Desktop/Arducam_tof_camera/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/jsy/Desktop/Arducam_tof_camera/install/sample/CppFaceCrudSample")
    endif()
  endif()
endif()

