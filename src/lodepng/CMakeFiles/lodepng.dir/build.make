# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /app

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /app

# Include any dependencies generated for this target.
include src/lodepng/CMakeFiles/lodepng.dir/depend.make

# Include the progress variables for this target.
include src/lodepng/CMakeFiles/lodepng.dir/progress.make

# Include the compile flags for this target's objects.
include src/lodepng/CMakeFiles/lodepng.dir/flags.make

src/lodepng/CMakeFiles/lodepng.dir/lodepng.cpp.o: src/lodepng/CMakeFiles/lodepng.dir/flags.make
src/lodepng/CMakeFiles/lodepng.dir/lodepng.cpp.o: src/lodepng/lodepng.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/lodepng/CMakeFiles/lodepng.dir/lodepng.cpp.o"
	cd /app/src/lodepng && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lodepng.dir/lodepng.cpp.o -c /app/src/lodepng/lodepng.cpp

src/lodepng/CMakeFiles/lodepng.dir/lodepng.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lodepng.dir/lodepng.cpp.i"
	cd /app/src/lodepng && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /app/src/lodepng/lodepng.cpp > CMakeFiles/lodepng.dir/lodepng.cpp.i

src/lodepng/CMakeFiles/lodepng.dir/lodepng.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lodepng.dir/lodepng.cpp.s"
	cd /app/src/lodepng && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /app/src/lodepng/lodepng.cpp -o CMakeFiles/lodepng.dir/lodepng.cpp.s

# Object files for target lodepng
lodepng_OBJECTS = \
"CMakeFiles/lodepng.dir/lodepng.cpp.o"

# External object files for target lodepng
lodepng_EXTERNAL_OBJECTS =

src/lodepng/liblodepng.a: src/lodepng/CMakeFiles/lodepng.dir/lodepng.cpp.o
src/lodepng/liblodepng.a: src/lodepng/CMakeFiles/lodepng.dir/build.make
src/lodepng/liblodepng.a: src/lodepng/CMakeFiles/lodepng.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liblodepng.a"
	cd /app/src/lodepng && $(CMAKE_COMMAND) -P CMakeFiles/lodepng.dir/cmake_clean_target.cmake
	cd /app/src/lodepng && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lodepng.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/lodepng/CMakeFiles/lodepng.dir/build: src/lodepng/liblodepng.a

.PHONY : src/lodepng/CMakeFiles/lodepng.dir/build

src/lodepng/CMakeFiles/lodepng.dir/clean:
	cd /app/src/lodepng && $(CMAKE_COMMAND) -P CMakeFiles/lodepng.dir/cmake_clean.cmake
.PHONY : src/lodepng/CMakeFiles/lodepng.dir/clean

src/lodepng/CMakeFiles/lodepng.dir/depend:
	cd /app && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /app /app/src/lodepng /app /app/src/lodepng /app/src/lodepng/CMakeFiles/lodepng.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/lodepng/CMakeFiles/lodepng.dir/depend

