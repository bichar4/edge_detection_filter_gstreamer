# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /media/bichar/Shared/cmake_gstreamer/myfilter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/bichar/Shared/cmake_gstreamer/myfilter/build

# Include any dependencies generated for this target.
include CMakeFiles/gstmyfilter.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gstmyfilter.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gstmyfilter.dir/flags.make

CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.o: CMakeFiles/gstmyfilter.dir/flags.make
CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.o: ../gstmyfilter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/bichar/Shared/cmake_gstreamer/myfilter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.o -c /media/bichar/Shared/cmake_gstreamer/myfilter/gstmyfilter.cpp

CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/bichar/Shared/cmake_gstreamer/myfilter/gstmyfilter.cpp > CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.i

CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/bichar/Shared/cmake_gstreamer/myfilter/gstmyfilter.cpp -o CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.s

CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.o.requires:

.PHONY : CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.o.requires

CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.o.provides: CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.o.requires
	$(MAKE) -f CMakeFiles/gstmyfilter.dir/build.make CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.o.provides.build
.PHONY : CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.o.provides

CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.o.provides.build: CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.o


# Object files for target gstmyfilter
gstmyfilter_OBJECTS = \
"CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.o"

# External object files for target gstmyfilter
gstmyfilter_EXTERNAL_OBJECTS =

libgstmyfilter.so: CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.o
libgstmyfilter.so: CMakeFiles/gstmyfilter.dir/build.make
libgstmyfilter.so: /usr/local/lib/libopencv_stitching.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_superres.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_videostab.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_aruco.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_bgsegm.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_bioinspired.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_ccalib.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_dnn_objdetect.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_dpm.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_face.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_freetype.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_fuzzy.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_hdf.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_hfs.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_img_hash.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_line_descriptor.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_optflow.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_reg.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_rgbd.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_saliency.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_stereo.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_structured_light.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_surface_matching.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_tracking.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_xfeatures2d.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_ximgproc.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_xobjdetect.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_xphoto.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_shape.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_photo.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_phase_unwrapping.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_video.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_datasets.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_plot.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_text.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_dnn.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_ml.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_objdetect.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_calib3d.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_features2d.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_flann.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_highgui.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_videoio.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_imgcodecs.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_imgproc.so.3.4.4
libgstmyfilter.so: /usr/local/lib/libopencv_core.so.3.4.4
libgstmyfilter.so: CMakeFiles/gstmyfilter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/bichar/Shared/cmake_gstreamer/myfilter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libgstmyfilter.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gstmyfilter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gstmyfilter.dir/build: libgstmyfilter.so

.PHONY : CMakeFiles/gstmyfilter.dir/build

CMakeFiles/gstmyfilter.dir/requires: CMakeFiles/gstmyfilter.dir/gstmyfilter.cpp.o.requires

.PHONY : CMakeFiles/gstmyfilter.dir/requires

CMakeFiles/gstmyfilter.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gstmyfilter.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gstmyfilter.dir/clean

CMakeFiles/gstmyfilter.dir/depend:
	cd /media/bichar/Shared/cmake_gstreamer/myfilter/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/bichar/Shared/cmake_gstreamer/myfilter /media/bichar/Shared/cmake_gstreamer/myfilter /media/bichar/Shared/cmake_gstreamer/myfilter/build /media/bichar/Shared/cmake_gstreamer/myfilter/build /media/bichar/Shared/cmake_gstreamer/myfilter/build/CMakeFiles/gstmyfilter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gstmyfilter.dir/depend

