# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/build

# Include any dependencies generated for this target.
include examples/algo/CMakeFiles/copy_and_sort_file.dir/depend.make

# Include the progress variables for this target.
include examples/algo/CMakeFiles/copy_and_sort_file.dir/progress.make

# Include the compile flags for this target's objects.
include examples/algo/CMakeFiles/copy_and_sort_file.dir/flags.make

examples/algo/CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.o: examples/algo/CMakeFiles/copy_and_sort_file.dir/flags.make
examples/algo/CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.o: ../examples/algo/copy_and_sort_file.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/algo/CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.o"
	cd /Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/build/examples/algo && /opt/local/bin/g++-mp-5  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.o -c /Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/examples/algo/copy_and_sort_file.cpp

examples/algo/CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.i"
	cd /Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/build/examples/algo && /opt/local/bin/g++-mp-5 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/examples/algo/copy_and_sort_file.cpp > CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.i

examples/algo/CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.s"
	cd /Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/build/examples/algo && /opt/local/bin/g++-mp-5 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/examples/algo/copy_and_sort_file.cpp -o CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.s

examples/algo/CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.o.requires:

.PHONY : examples/algo/CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.o.requires

examples/algo/CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.o.provides: examples/algo/CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.o.requires
	$(MAKE) -f examples/algo/CMakeFiles/copy_and_sort_file.dir/build.make examples/algo/CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.o.provides.build
.PHONY : examples/algo/CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.o.provides

examples/algo/CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.o.provides.build: examples/algo/CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.o


# Object files for target copy_and_sort_file
copy_and_sort_file_OBJECTS = \
"CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.o"

# External object files for target copy_and_sort_file
copy_and_sort_file_EXTERNAL_OBJECTS =

examples/algo/copy_and_sort_file: examples/algo/CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.o
examples/algo/copy_and_sort_file: examples/algo/CMakeFiles/copy_and_sort_file.dir/build.make
examples/algo/copy_and_sort_file: lib/libstxxl_debug.a
examples/algo/copy_and_sort_file: examples/algo/CMakeFiles/copy_and_sort_file.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable copy_and_sort_file"
	cd /Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/build/examples/algo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/copy_and_sort_file.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/algo/CMakeFiles/copy_and_sort_file.dir/build: examples/algo/copy_and_sort_file

.PHONY : examples/algo/CMakeFiles/copy_and_sort_file.dir/build

examples/algo/CMakeFiles/copy_and_sort_file.dir/requires: examples/algo/CMakeFiles/copy_and_sort_file.dir/copy_and_sort_file.cpp.o.requires

.PHONY : examples/algo/CMakeFiles/copy_and_sort_file.dir/requires

examples/algo/CMakeFiles/copy_and_sort_file.dir/clean:
	cd /Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/build/examples/algo && $(CMAKE_COMMAND) -P CMakeFiles/copy_and_sort_file.dir/cmake_clean.cmake
.PHONY : examples/algo/CMakeFiles/copy_and_sort_file.dir/clean

examples/algo/CMakeFiles/copy_and_sort_file.dir/depend:
	cd /Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl /Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/examples/algo /Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/build /Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/build/examples/algo /Users/eason/Documents/Uni/MasterWI/Masterarbeit/stxxl/build/examples/algo/CMakeFiles/copy_and_sort_file.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/algo/CMakeFiles/copy_and_sort_file.dir/depend
