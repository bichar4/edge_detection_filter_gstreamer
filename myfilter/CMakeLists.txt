cmake_minimum_required(VERSION 3.10)


find_package(PkgConfig)
find_package(OpenCV REQUIRED)
pkg_check_modules(GST REQUIRED gstreamer-1.0 
                                glib-2.0
                                gobject-2.0)


 message("OPENCV_LIBRARIES: ${OpenCV_INCLUDE_DIRS}")

add_library(gstmyfilter SHARED
        gstmyfilter.h
        gstmyfilter.cpp)

target_include_directories(gstmyfilter PUBLIC ${GST_INCLUDE_DIRS}
                            ${OpenCV_INCLUDE_DIRS})

target_link_libraries(gstmyfilter ${GST_LIBRARIES}
                                  ${OpenCV_LIBS})
