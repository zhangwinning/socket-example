# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/videojj/study/socket-example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/videojj/study/socket-example

# Include any dependencies generated for this target.
include c/struct/CMakeFiles/test5.dir/depend.make

# Include the progress variables for this target.
include c/struct/CMakeFiles/test5.dir/progress.make

# Include the compile flags for this target's objects.
include c/struct/CMakeFiles/test5.dir/flags.make

c/struct/CMakeFiles/test5.dir/test5.c.o: c/struct/CMakeFiles/test5.dir/flags.make
c/struct/CMakeFiles/test5.dir/test5.c.o: c/struct/test5.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/videojj/study/socket-example/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object c/struct/CMakeFiles/test5.dir/test5.c.o"
	cd /Users/videojj/study/socket-example/c/struct && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test5.dir/test5.c.o   -c /Users/videojj/study/socket-example/c/struct/test5.c

c/struct/CMakeFiles/test5.dir/test5.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test5.dir/test5.c.i"
	cd /Users/videojj/study/socket-example/c/struct && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/videojj/study/socket-example/c/struct/test5.c > CMakeFiles/test5.dir/test5.c.i

c/struct/CMakeFiles/test5.dir/test5.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test5.dir/test5.c.s"
	cd /Users/videojj/study/socket-example/c/struct && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/videojj/study/socket-example/c/struct/test5.c -o CMakeFiles/test5.dir/test5.c.s

# Object files for target test5
test5_OBJECTS = \
"CMakeFiles/test5.dir/test5.c.o"

# External object files for target test5
test5_EXTERNAL_OBJECTS =

c/struct/test5: c/struct/CMakeFiles/test5.dir/test5.c.o
c/struct/test5: c/struct/CMakeFiles/test5.dir/build.make
c/struct/test5: c/struct/CMakeFiles/test5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/videojj/study/socket-example/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test5"
	cd /Users/videojj/study/socket-example/c/struct && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
c/struct/CMakeFiles/test5.dir/build: c/struct/test5

.PHONY : c/struct/CMakeFiles/test5.dir/build

c/struct/CMakeFiles/test5.dir/clean:
	cd /Users/videojj/study/socket-example/c/struct && $(CMAKE_COMMAND) -P CMakeFiles/test5.dir/cmake_clean.cmake
.PHONY : c/struct/CMakeFiles/test5.dir/clean

c/struct/CMakeFiles/test5.dir/depend:
	cd /Users/videojj/study/socket-example && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/videojj/study/socket-example /Users/videojj/study/socket-example/c/struct /Users/videojj/study/socket-example /Users/videojj/study/socket-example/c/struct /Users/videojj/study/socket-example/c/struct/CMakeFiles/test5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : c/struct/CMakeFiles/test5.dir/depend

