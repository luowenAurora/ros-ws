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
include opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/depend.make

# Include the progress variables for this target.
include opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/progress.make

# Include the compile flags for this target's objects.
include opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/flags.make

opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.o: opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/flags.make
opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.o: /home/agilex/ros_ws/src/opencv_camera_pkg/src/opencv_camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/agilex/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.o"
	cd /home/agilex/ros_ws/build/opencv_camera_pkg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.o -c /home/agilex/ros_ws/src/opencv_camera_pkg/src/opencv_camera.cpp

opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.i"
	cd /home/agilex/ros_ws/build/opencv_camera_pkg && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/agilex/ros_ws/src/opencv_camera_pkg/src/opencv_camera.cpp > CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.i

opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.s"
	cd /home/agilex/ros_ws/build/opencv_camera_pkg && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/agilex/ros_ws/src/opencv_camera_pkg/src/opencv_camera.cpp -o CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.s

opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.o.requires:

.PHONY : opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.o.requires

opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.o.provides: opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.o.requires
	$(MAKE) -f opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/build.make opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.o.provides.build
.PHONY : opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.o.provides

opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.o.provides.build: opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.o


# Object files for target image_rec_handle
image_rec_handle_OBJECTS = \
"CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.o"

# External object files for target image_rec_handle
image_rec_handle_EXTERNAL_OBJECTS =

/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.o
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/build.make
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /home/agilex/catkin_ws/devel/lib/libcv_bridge.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_core.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_imgproc.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_imgcodecs.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /opt/ros/melodic/lib/libimage_transport.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /opt/ros/melodic/lib/libmessage_filters.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /opt/ros/melodic/lib/libclass_loader.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/libPocoFoundation.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libdl.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /opt/ros/melodic/lib/libroslib.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /opt/ros/melodic/lib/librospack.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libpython2.7.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libboost_program_options.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libtinyxml2.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /opt/ros/melodic/lib/libroscpp.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /opt/ros/melodic/lib/librosconsole.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libboost_regex.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /opt/ros/melodic/lib/librostime.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /opt/ros/melodic/lib/libcpp_common.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libboost_system.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libboost_thread.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libboost_chrono.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libboost_date_time.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libboost_atomic.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so.0.4
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_shape.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_stitching.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_superres.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_videostab.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_aruco.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_bgsegm.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_bioinspired.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_ccalib.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_datasets.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_dpm.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_face.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_freetype.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_fuzzy.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_hdf.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_line_descriptor.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_optflow.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_plot.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_reg.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_saliency.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_stereo.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_structured_light.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_surface_matching.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_text.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_ximgproc.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_xobjdetect.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_xphoto.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_video.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_viz.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_phase_unwrapping.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_rgbd.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_calib3d.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_features2d.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_flann.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_objdetect.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_ml.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_highgui.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_photo.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_videoio.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_imgcodecs.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_imgproc.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: /usr/lib/aarch64-linux-gnu/libopencv_core.so.3.2.0
/home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle: opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/agilex/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle"
	cd /home/agilex/ros_ws/build/opencv_camera_pkg && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/image_rec_handle.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/build: /home/agilex/ros_ws/devel/lib/opencv_camera_pkg/image_rec_handle

.PHONY : opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/build

opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/requires: opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/src/opencv_camera.cpp.o.requires

.PHONY : opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/requires

opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/clean:
	cd /home/agilex/ros_ws/build/opencv_camera_pkg && $(CMAKE_COMMAND) -P CMakeFiles/image_rec_handle.dir/cmake_clean.cmake
.PHONY : opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/clean

opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/depend:
	cd /home/agilex/ros_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/agilex/ros_ws/src /home/agilex/ros_ws/src/opencv_camera_pkg /home/agilex/ros_ws/build /home/agilex/ros_ws/build/opencv_camera_pkg /home/agilex/ros_ws/build/opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opencv_camera_pkg/CMakeFiles/image_rec_handle.dir/depend

