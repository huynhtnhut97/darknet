# Install script for directory: /home/nhuthuynh/darknet_alexeyAB/darknet

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nhuthuynh/darknet_alexeyAB/darknet")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/libdark.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/libdark.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/libdark.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/nhuthuynh/darknet_alexeyAB/darknet/libdark.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/nhuthuynh/darknet_alexeyAB/darknet" TYPE SHARED_LIBRARY FILES "/home/nhuthuynh/darknet_alexeyAB/darknet/libdark.so")
  if(EXISTS "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/libdark.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/libdark.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/libdark.so"
         OLD_RPATH "/home/nhuthuynh/miniconda2/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/libdark.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/nhuthuynh/darknet_alexeyAB/darknet/include/darknet/darknet.h;/home/nhuthuynh/darknet_alexeyAB/darknet/include/darknet/yolo_v2_class.hpp")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/nhuthuynh/darknet_alexeyAB/darknet/include/darknet" TYPE FILE FILES
    "/home/nhuthuynh/darknet_alexeyAB/darknet/include/darknet.h"
    "/home/nhuthuynh/darknet_alexeyAB/darknet/include/yolo_v2_class.hpp"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/uselib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/uselib")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/uselib"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/nhuthuynh/darknet_alexeyAB/darknet/uselib")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/nhuthuynh/darknet_alexeyAB/darknet" TYPE EXECUTABLE FILES "/home/nhuthuynh/darknet_alexeyAB/darknet/uselib")
  if(EXISTS "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/uselib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/uselib")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/uselib"
         OLD_RPATH "/home/nhuthuynh/darknet_alexeyAB/darknet:/home/nhuthuynh/miniconda2/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/uselib")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/darknet" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/darknet")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/darknet"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/nhuthuynh/darknet_alexeyAB/darknet/darknet")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/nhuthuynh/darknet_alexeyAB/darknet" TYPE EXECUTABLE FILES "/home/nhuthuynh/darknet_alexeyAB/darknet/darknet")
  if(EXISTS "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/darknet" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/darknet")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/darknet"
         OLD_RPATH "/home/nhuthuynh/miniconda2/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/darknet")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/uselib_track" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/uselib_track")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/uselib_track"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/nhuthuynh/darknet_alexeyAB/darknet/uselib_track")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/nhuthuynh/darknet_alexeyAB/darknet" TYPE EXECUTABLE FILES "/home/nhuthuynh/darknet_alexeyAB/darknet/uselib_track")
  if(EXISTS "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/uselib_track" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/uselib_track")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/uselib_track"
         OLD_RPATH "/home/nhuthuynh/darknet_alexeyAB/darknet:/home/nhuthuynh/miniconda2/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/uselib_track")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/share/darknet/DarknetTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/share/darknet/DarknetTargets.cmake"
         "/home/nhuthuynh/darknet_alexeyAB/darknet/CMakeFiles/Export/_home/nhuthuynh/darknet_alexeyAB/darknet/share/darknet/DarknetTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/share/darknet/DarknetTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}/home/nhuthuynh/darknet_alexeyAB/darknet/share/darknet/DarknetTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/nhuthuynh/darknet_alexeyAB/darknet/share/darknet/DarknetTargets.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/nhuthuynh/darknet_alexeyAB/darknet/share/darknet" TYPE FILE FILES "/home/nhuthuynh/darknet_alexeyAB/darknet/CMakeFiles/Export/_home/nhuthuynh/darknet_alexeyAB/darknet/share/darknet/DarknetTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/home/nhuthuynh/darknet_alexeyAB/darknet/share/darknet/DarknetTargets-noconfig.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/home/nhuthuynh/darknet_alexeyAB/darknet/share/darknet" TYPE FILE FILES "/home/nhuthuynh/darknet_alexeyAB/darknet/CMakeFiles/Export/_home/nhuthuynh/darknet_alexeyAB/darknet/share/darknet/DarknetTargets-noconfig.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/nhuthuynh/darknet_alexeyAB/darknet/share/darknet/DarknetConfig.cmake;/home/nhuthuynh/darknet_alexeyAB/darknet/share/darknet/DarknetConfigVersion.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/nhuthuynh/darknet_alexeyAB/darknet/share/darknet" TYPE FILE FILES
    "/home/nhuthuynh/darknet_alexeyAB/darknet/CMakeFiles/DarknetConfig.cmake"
    "/home/nhuthuynh/darknet_alexeyAB/darknet/DarknetConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/nhuthuynh/darknet_alexeyAB/darknet/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
