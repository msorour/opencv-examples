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
CMAKE_SOURCE_DIR = /home/business/opencv-examples/exchange_rate_monitoring

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/business/opencv-examples/exchange_rate_monitoring/build

# Include any dependencies generated for this target.
include CMakeFiles/manual_monitoring.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/manual_monitoring.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/manual_monitoring.dir/flags.make

CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.o: CMakeFiles/manual_monitoring.dir/flags.make
CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.o: ../manual_monitoring.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/business/opencv-examples/exchange_rate_monitoring/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.o -c /home/business/opencv-examples/exchange_rate_monitoring/manual_monitoring.cpp

CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/business/opencv-examples/exchange_rate_monitoring/manual_monitoring.cpp > CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.i

CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/business/opencv-examples/exchange_rate_monitoring/manual_monitoring.cpp -o CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.s

CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.o.requires:

.PHONY : CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.o.requires

CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.o.provides: CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.o.requires
	$(MAKE) -f CMakeFiles/manual_monitoring.dir/build.make CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.o.provides.build
.PHONY : CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.o.provides

CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.o.provides.build: CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.o


# Object files for target manual_monitoring
manual_monitoring_OBJECTS = \
"CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.o"

# External object files for target manual_monitoring
manual_monitoring_EXTERNAL_OBJECTS =

manual_monitoring: CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.o
manual_monitoring: CMakeFiles/manual_monitoring.dir/build.make
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_face.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_text.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_video.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.3.2.0
manual_monitoring: /usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0
manual_monitoring: CMakeFiles/manual_monitoring.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/business/opencv-examples/exchange_rate_monitoring/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable manual_monitoring"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/manual_monitoring.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/manual_monitoring.dir/build: manual_monitoring

.PHONY : CMakeFiles/manual_monitoring.dir/build

CMakeFiles/manual_monitoring.dir/requires: CMakeFiles/manual_monitoring.dir/manual_monitoring.cpp.o.requires

.PHONY : CMakeFiles/manual_monitoring.dir/requires

CMakeFiles/manual_monitoring.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/manual_monitoring.dir/cmake_clean.cmake
.PHONY : CMakeFiles/manual_monitoring.dir/clean

CMakeFiles/manual_monitoring.dir/depend:
	cd /home/business/opencv-examples/exchange_rate_monitoring/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/business/opencv-examples/exchange_rate_monitoring /home/business/opencv-examples/exchange_rate_monitoring /home/business/opencv-examples/exchange_rate_monitoring/build /home/business/opencv-examples/exchange_rate_monitoring/build /home/business/opencv-examples/exchange_rate_monitoring/build/CMakeFiles/manual_monitoring.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/manual_monitoring.dir/depend

