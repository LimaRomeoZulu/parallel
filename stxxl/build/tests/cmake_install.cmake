# Install script for directory: /Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/tests

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
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/build/tests/algo/cmake_install.cmake")
  include("/Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/build/tests/common/cmake_install.cmake")
  include("/Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/build/tests/containers/cmake_install.cmake")
  include("/Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/build/tests/io/cmake_install.cmake")
  include("/Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/build/tests/mng/cmake_install.cmake")
  include("/Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/build/tests/parallel/cmake_install.cmake")
  include("/Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/build/tests/stream/cmake_install.cmake")

endif()
