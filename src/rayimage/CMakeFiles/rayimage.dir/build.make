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
include src/rayimage/CMakeFiles/rayimage.dir/depend.make

# Include the progress variables for this target.
include src/rayimage/CMakeFiles/rayimage.dir/progress.make

# Include the compile flags for this target's objects.
include src/rayimage/CMakeFiles/rayimage.dir/flags.make

src/rayimage/CMakeFiles/rayimage.dir/Image.cpp.o: src/rayimage/CMakeFiles/rayimage.dir/flags.make
src/rayimage/CMakeFiles/rayimage.dir/Image.cpp.o: src/rayimage/Image.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/rayimage/CMakeFiles/rayimage.dir/Image.cpp.o"
	cd /app/src/rayimage && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rayimage.dir/Image.cpp.o -c /app/src/rayimage/Image.cpp

src/rayimage/CMakeFiles/rayimage.dir/Image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rayimage.dir/Image.cpp.i"
	cd /app/src/rayimage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /app/src/rayimage/Image.cpp > CMakeFiles/rayimage.dir/Image.cpp.i

src/rayimage/CMakeFiles/rayimage.dir/Image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rayimage.dir/Image.cpp.s"
	cd /app/src/rayimage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /app/src/rayimage/Image.cpp -o CMakeFiles/rayimage.dir/Image.cpp.s

# Object files for target rayimage
rayimage_OBJECTS = \
"CMakeFiles/rayimage.dir/Image.cpp.o"

# External object files for target rayimage
rayimage_EXTERNAL_OBJECTS =

src/rayimage/librayimage.a: src/rayimage/CMakeFiles/rayimage.dir/Image.cpp.o
src/rayimage/librayimage.a: src/rayimage/CMakeFiles/rayimage.dir/build.make
src/rayimage/librayimage.a: src/rayimage/CMakeFiles/rayimage.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library librayimage.a"
	cd /app/src/rayimage && $(CMAKE_COMMAND) -P CMakeFiles/rayimage.dir/cmake_clean_target.cmake
	cd /app/src/rayimage && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rayimage.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/rayimage/CMakeFiles/rayimage.dir/build: src/rayimage/librayimage.a

.PHONY : src/rayimage/CMakeFiles/rayimage.dir/build

src/rayimage/CMakeFiles/rayimage.dir/clean:
	cd /app/src/rayimage && $(CMAKE_COMMAND) -P CMakeFiles/rayimage.dir/cmake_clean.cmake
.PHONY : src/rayimage/CMakeFiles/rayimage.dir/clean

src/rayimage/CMakeFiles/rayimage.dir/depend:
	cd /app && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /app /app/src/rayimage /app /app/src/rayimage /app/src/rayimage/CMakeFiles/rayimage.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/rayimage/CMakeFiles/rayimage.dir/depend

