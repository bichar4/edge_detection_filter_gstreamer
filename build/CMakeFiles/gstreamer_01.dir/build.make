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
CMAKE_SOURCE_DIR = /media/bichar/Shared/cmake_gstreamer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/bichar/Shared/cmake_gstreamer/build

# Include any dependencies generated for this target.
include CMakeFiles/gstreamer_01.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gstreamer_01.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gstreamer_01.dir/flags.make

CMakeFiles/gstreamer_01.dir/main.c.o: CMakeFiles/gstreamer_01.dir/flags.make
CMakeFiles/gstreamer_01.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/bichar/Shared/cmake_gstreamer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/gstreamer_01.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/gstreamer_01.dir/main.c.o   -c /media/bichar/Shared/cmake_gstreamer/main.c

CMakeFiles/gstreamer_01.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gstreamer_01.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/bichar/Shared/cmake_gstreamer/main.c > CMakeFiles/gstreamer_01.dir/main.c.i

CMakeFiles/gstreamer_01.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gstreamer_01.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/bichar/Shared/cmake_gstreamer/main.c -o CMakeFiles/gstreamer_01.dir/main.c.s

CMakeFiles/gstreamer_01.dir/main.c.o.requires:

.PHONY : CMakeFiles/gstreamer_01.dir/main.c.o.requires

CMakeFiles/gstreamer_01.dir/main.c.o.provides: CMakeFiles/gstreamer_01.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/gstreamer_01.dir/build.make CMakeFiles/gstreamer_01.dir/main.c.o.provides.build
.PHONY : CMakeFiles/gstreamer_01.dir/main.c.o.provides

CMakeFiles/gstreamer_01.dir/main.c.o.provides.build: CMakeFiles/gstreamer_01.dir/main.c.o


# Object files for target gstreamer_01
gstreamer_01_OBJECTS = \
"CMakeFiles/gstreamer_01.dir/main.c.o"

# External object files for target gstreamer_01
gstreamer_01_EXTERNAL_OBJECTS =

gstreamer_01: CMakeFiles/gstreamer_01.dir/main.c.o
gstreamer_01: CMakeFiles/gstreamer_01.dir/build.make
gstreamer_01: CMakeFiles/gstreamer_01.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/bichar/Shared/cmake_gstreamer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable gstreamer_01"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gstreamer_01.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gstreamer_01.dir/build: gstreamer_01

.PHONY : CMakeFiles/gstreamer_01.dir/build

CMakeFiles/gstreamer_01.dir/requires: CMakeFiles/gstreamer_01.dir/main.c.o.requires

.PHONY : CMakeFiles/gstreamer_01.dir/requires

CMakeFiles/gstreamer_01.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gstreamer_01.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gstreamer_01.dir/clean

CMakeFiles/gstreamer_01.dir/depend:
	cd /media/bichar/Shared/cmake_gstreamer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/bichar/Shared/cmake_gstreamer /media/bichar/Shared/cmake_gstreamer /media/bichar/Shared/cmake_gstreamer/build /media/bichar/Shared/cmake_gstreamer/build /media/bichar/Shared/cmake_gstreamer/build/CMakeFiles/gstreamer_01.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gstreamer_01.dir/depend

