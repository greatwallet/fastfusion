# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/cxt/scripts/fastfusion

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cxt/scripts/fastfusion

# Include any dependencies generated for this target.
include src/CMakeFiles/onlinefusion.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/onlinefusion.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/onlinefusion.dir/flags.make

src/moc_onlinefusionviewer.cxx: src/onlinefusionviewer.hpp
src/moc_onlinefusionviewer.cxx: src/moc_onlinefusionviewer.cxx_parameters
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cxt/scripts/fastfusion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating moc_onlinefusionviewer.cxx"
	cd /home/cxt/scripts/fastfusion/src && /usr/local/Trolltech/Qt-4.8.7/bin/moc @/home/cxt/scripts/fastfusion/src/moc_onlinefusionviewer.cxx_parameters

src/CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.o: src/CMakeFiles/onlinefusion.dir/flags.make
src/CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.o: src/onlinefusionviewer_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cxt/scripts/fastfusion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.o"
	cd /home/cxt/scripts/fastfusion/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.o -c /home/cxt/scripts/fastfusion/src/onlinefusionviewer_main.cpp

src/CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.i"
	cd /home/cxt/scripts/fastfusion/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cxt/scripts/fastfusion/src/onlinefusionviewer_main.cpp > CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.i

src/CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.s"
	cd /home/cxt/scripts/fastfusion/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cxt/scripts/fastfusion/src/onlinefusionviewer_main.cpp -o CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.s

src/CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.o.requires:

.PHONY : src/CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.o.requires

src/CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.o.provides: src/CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/onlinefusion.dir/build.make src/CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.o.provides.build
.PHONY : src/CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.o.provides

src/CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.o.provides.build: src/CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.o


src/CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.o: src/CMakeFiles/onlinefusion.dir/flags.make
src/CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.o: src/onlinefusionviewer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cxt/scripts/fastfusion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.o"
	cd /home/cxt/scripts/fastfusion/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.o -c /home/cxt/scripts/fastfusion/src/onlinefusionviewer.cpp

src/CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.i"
	cd /home/cxt/scripts/fastfusion/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cxt/scripts/fastfusion/src/onlinefusionviewer.cpp > CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.i

src/CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.s"
	cd /home/cxt/scripts/fastfusion/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cxt/scripts/fastfusion/src/onlinefusionviewer.cpp -o CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.s

src/CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.o.requires:

.PHONY : src/CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.o.requires

src/CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.o.provides: src/CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/onlinefusion.dir/build.make src/CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.o.provides.build
.PHONY : src/CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.o.provides

src/CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.o.provides.build: src/CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.o


src/CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.o: src/CMakeFiles/onlinefusion.dir/flags.make
src/CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.o: src/moc_onlinefusionviewer.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cxt/scripts/fastfusion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.o"
	cd /home/cxt/scripts/fastfusion/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.o -c /home/cxt/scripts/fastfusion/src/moc_onlinefusionviewer.cxx

src/CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.i"
	cd /home/cxt/scripts/fastfusion/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cxt/scripts/fastfusion/src/moc_onlinefusionviewer.cxx > CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.i

src/CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.s"
	cd /home/cxt/scripts/fastfusion/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cxt/scripts/fastfusion/src/moc_onlinefusionviewer.cxx -o CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.s

src/CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.o.requires:

.PHONY : src/CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.o.requires

src/CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.o.provides: src/CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.o.requires
	$(MAKE) -f src/CMakeFiles/onlinefusion.dir/build.make src/CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.o.provides.build
.PHONY : src/CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.o.provides

src/CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.o.provides.build: src/CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.o


# Object files for target onlinefusion
onlinefusion_OBJECTS = \
"CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.o" \
"CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.o" \
"CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.o"

# External object files for target onlinefusion
onlinefusion_EXTERNAL_OBJECTS =

bin/onlinefusion: src/CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.o
bin/onlinefusion: src/CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.o
bin/onlinefusion: src/CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.o
bin/onlinefusion: src/CMakeFiles/onlinefusion.dir/build.make
bin/onlinefusion: lib/libgeometryfusion_mipmap_cpu.a
bin/onlinefusion: lib/libgeometryfusion_aos.a
bin/onlinefusion: lib/libcamerautils.a
bin/onlinefusion: lib/libauxiliary.a
bin/onlinefusion: /home/cxt/lib/opencv-3.4.9/build/lib/libopencv_videostab.so.3.4.9
bin/onlinefusion: /home/cxt/lib/opencv-3.4.9/build/lib/libopencv_photo.so.3.4.9
bin/onlinefusion: /home/cxt/lib/opencv-3.4.9/build/lib/libopencv_objdetect.so.3.4.9
bin/onlinefusion: /home/cxt/lib/opencv-3.4.9/build/lib/libopencv_dnn.so.3.4.9
bin/onlinefusion: /home/cxt/lib/opencv-3.4.9/build/lib/libopencv_ml.so.3.4.9
bin/onlinefusion: /home/cxt/lib/opencv-3.4.9/build/lib/libopencv_superres.so.3.4.9
bin/onlinefusion: /home/cxt/lib/opencv-3.4.9/build/lib/libopencv_highgui.so.3.4.9
bin/onlinefusion: /home/cxt/lib/opencv-3.4.9/build/lib/libopencv_stitching.so.3.4.9
bin/onlinefusion: /home/cxt/lib/opencv-3.4.9/build/lib/libopencv_videoio.so.3.4.9
bin/onlinefusion: /home/cxt/lib/opencv-3.4.9/build/lib/libopencv_shape.so.3.4.9
bin/onlinefusion: /home/cxt/lib/opencv-3.4.9/build/lib/libopencv_imgcodecs.so.3.4.9
bin/onlinefusion: /home/cxt/lib/opencv-3.4.9/build/lib/libopencv_calib3d.so.3.4.9
bin/onlinefusion: /home/cxt/lib/opencv-3.4.9/build/lib/libopencv_features2d.so.3.4.9
bin/onlinefusion: /home/cxt/lib/opencv-3.4.9/build/lib/libopencv_flann.so.3.4.9
bin/onlinefusion: /home/cxt/lib/opencv-3.4.9/build/lib/libopencv_video.so.3.4.9
bin/onlinefusion: /home/cxt/lib/opencv-3.4.9/build/lib/libopencv_imgproc.so.3.4.9
bin/onlinefusion: /home/cxt/lib/opencv-3.4.9/build/lib/libopencv_core.so.3.4.9
bin/onlinefusion: src/CMakeFiles/onlinefusion.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cxt/scripts/fastfusion/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ../bin/onlinefusion"
	cd /home/cxt/scripts/fastfusion/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/onlinefusion.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/onlinefusion.dir/build: bin/onlinefusion

.PHONY : src/CMakeFiles/onlinefusion.dir/build

src/CMakeFiles/onlinefusion.dir/requires: src/CMakeFiles/onlinefusion.dir/onlinefusionviewer_main.cpp.o.requires
src/CMakeFiles/onlinefusion.dir/requires: src/CMakeFiles/onlinefusion.dir/onlinefusionviewer.cpp.o.requires
src/CMakeFiles/onlinefusion.dir/requires: src/CMakeFiles/onlinefusion.dir/moc_onlinefusionviewer.cxx.o.requires

.PHONY : src/CMakeFiles/onlinefusion.dir/requires

src/CMakeFiles/onlinefusion.dir/clean:
	cd /home/cxt/scripts/fastfusion/src && $(CMAKE_COMMAND) -P CMakeFiles/onlinefusion.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/onlinefusion.dir/clean

src/CMakeFiles/onlinefusion.dir/depend: src/moc_onlinefusionviewer.cxx
	cd /home/cxt/scripts/fastfusion && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cxt/scripts/fastfusion /home/cxt/scripts/fastfusion/src /home/cxt/scripts/fastfusion /home/cxt/scripts/fastfusion/src /home/cxt/scripts/fastfusion/src/CMakeFiles/onlinefusion.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/onlinefusion.dir/depend

