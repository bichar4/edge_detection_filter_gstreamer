cmake_minimum_required(VERSION 3.1)

project(gstreamer_01)

set(CMAKE_CXX_STANDARD 14) #setting c++
find_package(PkgConfig)

#using pkg-config to get gstreamer 
pkg_check_modules(GSTREAMER REQUIRED gstreamer-1.0)

#including GStreamer header files directory
include_directories(
    ${GSTREAMER_INCLUDE_DIRS}
)
message("hello" ${GSTREAMER_LIBRARIES})


#building target executable
add_executable(${PROJECT_NAME} main.cpp)

#linking Gstreamer library with target executable 
target_link_libraries(${PROJECT_NAME} ${GSTREAMER_LIBRARIES})
