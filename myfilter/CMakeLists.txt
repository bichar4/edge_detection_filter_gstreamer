cmake_minimum_required(VERSION 3.10)


# SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
# SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c99")

# set(PACKAGE_VERSION 1.17.0.1)
# set(PACKAGE "gst-template-plugin")
# set(GST_LICENSE, "LGPL")
# set(GST_API_VERSION, 1)
# set(GST_PACKAGE_NAME "GStreamer template Plug-ins")
# set(GST_PACKAGE_ORIGIN "https://gstreamer.freedesktop.org")

find_package(PkgConfig)
pkg_check_modules(GST REQUIRED gstreamer-1.0 
                                glib-2.0
                                gobject-2.0)

include_directories(
    ${GST_INCLUDE_DIRS}
)

message("GST_LIBRARIES: ${GST_PLUGIN_INSTALL_DIR}")

# set_source_files_properties(gstmyfilter.cpp PROPERTIES LANGUAGE CXX )

add_library(gstmyfilter SHARED
        gstmyfilter.h
        gstmyfilter.cpp)


link_libraries(${GST_LIBRARIES})

target_include_directories(gstmyfilter PUBLIC ${GST_INCLUDE_DIRS})

target_link_libraries(gstmyfilter /usr/lib/x86_64-linux-gnu/libgstreamer-1.0.so)
target_link_libraries(gstmyfilter /usr/lib/x86_64-linux-gnu/libglib-2.0.so)
target_link_libraries(gstmyfilter /usr/lib/x86_64-linux-gnu/libgobject-2.0.so)

target_compile_options(gstmyfilter PUBLIC ${GST_CFLAGS})

# target_compile_definitions(gstmyfilter PUBLIC 
#                             PUBLIC PACKAGE_VERSION 
#                             PUBLIC PACKAGE 
#                             PUBLIC GST_LICENSE
#                             PUBLIC GST_PACKAGE_NAME
#                             PUBLIC GST_API_VERSION
#                             PUBLIC GST_PACKAGE_ORIGIN)
