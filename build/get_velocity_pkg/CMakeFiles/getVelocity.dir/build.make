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
CMAKE_SOURCE_DIR = /home/agilex/ros_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/agilex/ros_ws/build

# Include any dependencies generated for this target.
include get_velocity_pkg/CMakeFiles/getVelocity.dir/depend.make

# Include the progress variables for this target.
include get_velocity_pkg/CMakeFiles/getVelocity.dir/progress.make

# Include the compile flags for this target's objects.
include get_velocity_pkg/CMakeFiles/getVelocity.dir/flags.make

get_velocity_pkg/CMakeFiles/getVelocity.dir/src/get_velocity.cpp.o: get_velocity_pkg/CMakeFiles/getVelocity.dir/flags.make
get_velocity_pkg/CMakeFiles/getVelocity.dir/src/get_velocity.cpp.o: /home/agilex/ros_ws/src/get_velocity_pkg/src/get_velocity.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/agilex/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object get_velocity_pkg/CMakeFiles/getVelocity.dir/src/get_velocity.cpp.o"
	cd /home/agilex/ros_ws/build/get_velocity_pkg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/getVelocity.dir/src/get_velocity.cpp.o -c /home/agilex/ros_ws/src/get_velocity_pkg/src/get_velocity.cpp

get_velocity_pkg/CMakeFiles/getVelocity.dir/src/get_velocity.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/getVelocity.dir/src/get_velocity.cpp.i"
	cd /home/agilex/ros_ws/build/get_velocity_pkg && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/agilex/ros_ws/src/get_velocity_pkg/src/get_velocity.cpp > CMakeFiles/getVelocity.dir/src/get_velocity.cpp.i

get_velocity_pkg/CMakeFiles/getVelocity.dir/src/get_velocity.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/getVelocity.dir/src/get_velocity.cpp.s"
	cd /home/agilex/ros_ws/build/get_velocity_pkg && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/agilex/ros_ws/src/get_velocity_pkg/src/get_velocity.cpp -o CMakeFiles/getVelocity.dir/src/get_velocity.cpp.s

get_velocity_pkg/CMakeFiles/getVelocity.dir/src/get_velocity.cpp.o.requires:

.PHONY : get_velocity_pkg/CMakeFiles/getVelocity.dir/src/get_velocity.cpp.o.requires

get_velocity_pkg/CMakeFiles/getVelocity.dir/src/get_velocity.cpp.o.provides: get_velocity_pkg/CMakeFiles/getVelocity.dir/src/get_velocity.cpp.o.requires
	$(MAKE) -f get_velocity_pkg/CMakeFiles/getVelocity.dir/build.make get_velocity_pkg/CMakeFiles/getVelocity.dir/src/get_velocity.cpp.o.provides.build
.PHONY : get_velocity_pkg/CMakeFiles/getVelocity.dir/src/get_velocity.cpp.o.provides

get_velocity_pkg/CMakeFiles/getVelocity.dir/src/get_velocity.cpp.o.provides.build: get_velocity_pkg/CMakeFiles/getVelocity.dir/src/get_velocity.cpp.o


# Object files for target getVelocity
getVelocity_OBJECTS = \
"CMakeFiles/getVelocity.dir/src/get_velocity.cpp.o"

# External object files for target getVelocity
getVelocity_EXTERNAL_OBJECTS =

/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: get_velocity_pkg/CMakeFiles/getVelocity.dir/src/get_velocity.cpp.o
/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: get_velocity_pkg/CMakeFiles/getVelocity.dir/build.make
/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: /opt/ros/melodic/lib/libroscpp.so
/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: /opt/ros/melodic/lib/librosconsole.so
/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: /usr/lib/aarch64-linux-gnu/libboost_regex.so
/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: /opt/ros/melodic/lib/librostime.so
/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: /opt/ros/melodic/lib/libcpp_common.so
/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: /usr/lib/aarch64-linux-gnu/libboost_system.so
/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: /usr/lib/aarch64-linux-gnu/libboost_thread.so
/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: /usr/lib/aarch64-linux-gnu/libboost_chrono.so
/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: /usr/lib/aarch64-linux-gnu/libboost_date_time.so
/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: /usr/lib/aarch64-linux-gnu/libboost_atomic.so
/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so.0.4
/home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity: get_velocity_pkg/CMakeFiles/getVelocity.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/agilex/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity"
	cd /home/agilex/ros_ws/build/get_velocity_pkg && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/getVelocity.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
get_velocity_pkg/CMakeFiles/getVelocity.dir/build: /home/agilex/ros_ws/devel/lib/get_velocity_pkg/getVelocity

.PHONY : get_velocity_pkg/CMakeFiles/getVelocity.dir/build

get_velocity_pkg/CMakeFiles/getVelocity.dir/requires: get_velocity_pkg/CMakeFiles/getVelocity.dir/src/get_velocity.cpp.o.requires

.PHONY : get_velocity_pkg/CMakeFiles/getVelocity.dir/requires

get_velocity_pkg/CMakeFiles/getVelocity.dir/clean:
	cd /home/agilex/ros_ws/build/get_velocity_pkg && $(CMAKE_COMMAND) -P CMakeFiles/getVelocity.dir/cmake_clean.cmake
.PHONY : get_velocity_pkg/CMakeFiles/getVelocity.dir/clean

get_velocity_pkg/CMakeFiles/getVelocity.dir/depend:
	cd /home/agilex/ros_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/agilex/ros_ws/src /home/agilex/ros_ws/src/get_velocity_pkg /home/agilex/ros_ws/build /home/agilex/ros_ws/build/get_velocity_pkg /home/agilex/ros_ws/build/get_velocity_pkg/CMakeFiles/getVelocity.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : get_velocity_pkg/CMakeFiles/getVelocity.dir/depend

