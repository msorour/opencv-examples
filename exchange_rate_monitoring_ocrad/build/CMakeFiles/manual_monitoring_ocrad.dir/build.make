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
CMAKE_SOURCE_DIR = /home/business/opencv-examples/exchange_rate_monitoring_ocrad

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/business/opencv-examples/exchange_rate_monitoring_ocrad/build

# Include any dependencies generated for this target.
include CMakeFiles/manual_monitoring_ocrad.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/manual_monitoring_ocrad.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/manual_monitoring_ocrad.dir/flags.make

CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.o: CMakeFiles/manual_monitoring_ocrad.dir/flags.make
CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.o: ../manual_monitoring_ocrad.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/business/opencv-examples/exchange_rate_monitoring_ocrad/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.o -c /home/business/opencv-examples/exchange_rate_monitoring_ocrad/manual_monitoring_ocrad.cpp

CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/business/opencv-examples/exchange_rate_monitoring_ocrad/manual_monitoring_ocrad.cpp > CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.i

CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/business/opencv-examples/exchange_rate_monitoring_ocrad/manual_monitoring_ocrad.cpp -o CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.s

CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.o.requires:

.PHONY : CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.o.requires

CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.o.provides: CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.o.requires
	$(MAKE) -f CMakeFiles/manual_monitoring_ocrad.dir/build.make CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.o.provides.build
.PHONY : CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.o.provides

CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.o.provides.build: CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.o


# Object files for target manual_monitoring_ocrad
manual_monitoring_ocrad_OBJECTS = \
"CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.o"

# External object files for target manual_monitoring_ocrad
manual_monitoring_ocrad_EXTERNAL_OBJECTS =

manual_monitoring_ocrad: CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.o
manual_monitoring_ocrad: CMakeFiles/manual_monitoring_ocrad.dir/build.make
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_face.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_text.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_video.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.3.2.0
manual_monitoring_ocrad: /usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0
manual_monitoring_ocrad: CMakeFiles/manual_monitoring_ocrad.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/business/opencv-examples/exchange_rate_monitoring_ocrad/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable manual_monitoring_ocrad"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/manual_monitoring_ocrad.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/manual_monitoring_ocrad.dir/build: manual_monitoring_ocrad

.PHONY : CMakeFiles/manual_monitoring_ocrad.dir/build

CMakeFiles/manual_monitoring_ocrad.dir/requires: CMakeFiles/manual_monitoring_ocrad.dir/manual_monitoring_ocrad.cpp.o.requires

.PHONY : CMakeFiles/manual_monitoring_ocrad.dir/requires

CMakeFiles/manual_monitoring_ocrad.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/manual_monitoring_ocrad.dir/cmake_clean.cmake
.PHONY : CMakeFiles/manual_monitoring_ocrad.dir/clean

CMakeFiles/manual_monitoring_ocrad.dir/depend:
	cd /home/business/opencv-examples/exchange_rate_monitoring_ocrad/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/business/opencv-examples/exchange_rate_monitoring_ocrad /home/business/opencv-examples/exchange_rate_monitoring_ocrad /home/business/opencv-examples/exchange_rate_monitoring_ocrad/build /home/business/opencv-examples/exchange_rate_monitoring_ocrad/build /home/business/opencv-examples/exchange_rate_monitoring_ocrad/build/CMakeFiles/manual_monitoring_ocrad.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/manual_monitoring_ocrad.dir/depend

